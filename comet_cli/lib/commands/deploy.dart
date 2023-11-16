import 'dart:io';
import 'package:comet_cli/config.dart';
import 'package:comet_cli/functions/read_yaml.dart';
import 'package:comet_cli/functions/run_flutter_release_build.dart';
import 'package:comet_cli/functions/run_git_add_origin.dart';
import 'package:comet_cli/functions/run_git_commit_gh_branch.dart';
import 'package:comet_cli/functions/run_git_has_remote.dart';
import 'package:comet_cli/functions/run_git_init.dart';
import 'package:comet_cli/functions/run_git_is_git_dir.dart';
import 'package:comet_cli/functions/run_git_push_gh_branch.dart';
import 'package:comet_cli/utils/progress_star.dart';

/// process of deploy
Future<void> deploy({
  required bool noPush,
}) async {
  // Cometプロジェクトかどうか
  final cometYaml = readCometYaml();
  if (cometYaml == null) {
    print('Not found $cometYamlName');
    return;
  }

  final githubUserId = cometYaml.github.userId;
  final githubRepoName = cometYaml.github.repoName;
  if (githubUserId == null) {
    print('Please fill github.user_id in comet.yaml');
    return;
  }

  if (githubRepoName == null) {
    print('Please fill github.repository_name in comet.yaml');
    return;
  }

  // comet build
  await Process.run(
    'comet',
    [
      'build',
    ],
    runInShell: true,
  );

  ProgressStar.start('[1/$processCount] flutter build..');

  // Flutter ビルド
  await runFlutterReleaseBuild(
    cometYaml.flutterProject.root,
    githubRepoName,
  );

  ProgressStar.message('[2/$processCount] git checking..');

  // Git リポジトリかどうか
  final isGitdir = await runGitIsGitDir();

  if (!isGitdir) {
    // Gitリポジトリではないのでinit
    ProgressStar.message('[2/$processCount] git init..');
    await runGitInit();
  }

  // リモートリポジトリを持っているか
  final hasRemote = await runGitHasRemote();

  if (!hasRemote) {
    // リモートリポジトリを持っていないのでadd
    ProgressStar.message('[2/$processCount] git remote add..');
    await runGitAddOrigin(githubUserId, githubRepoName);
  }

  ProgressStar.message('[3/$processCount] git commit..');

  // gh-pages ブランチにコミット
  await runGitCommitGhBranch(
    flutterProject: cometYaml.flutterProject.root,
  );

  ProgressStar.message('[4/$processCount] git push..');

  // no-push オプションのときはここで終了
  if (noPush) {
    print('finied with option: --no-push');
    ProgressStar.stop();
    return;
  }

  // gh-pages ブランチをプッシュ
  await runGitPushGhBranch();
  ProgressStar.stop();

  print('All done. Your site URL (It may take a few minutes).');
  print('https://$githubUserId.github.io/$githubRepoName/');
}

const processCount = 4;
