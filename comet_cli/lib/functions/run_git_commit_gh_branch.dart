import 'package:comet_cli/functions/get_commit_msg.dart';
import 'package:comet_cli/functions/git_library.dart';
import 'package:path/path.dart' as path;
import 'package:comet_cli/config.dart';

/// git commit (to gh-pages banch)
Future<void> runGitCommitGhBranch({
  required String flutterProject,
}) async {
  final publishDir = path.join(
    path.current,
    flutterProject,
    flutterBuildWebDist,
  );

  final commitMsg = getCommitMsg();

  final library = GitLibrary();
  await library.commitToBranch(
    contentDirFullPath: publishDir,
    branch: githubPagesBranch,
    commitMsg: commitMsg,
  );
}
