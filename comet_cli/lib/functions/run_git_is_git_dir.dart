import 'package:comet_cli/functions/run_git.dart';

Future<bool> runGitIsGitDir() async {
  final process = await runGit(
    const [
      'rev-parse',
    ],
  );

  // エラーが出るのは想定通りなので出力しない
  // ユーザーに混乱を与えるため

  final code = await process.exitCode;
  return code == 0;
}
