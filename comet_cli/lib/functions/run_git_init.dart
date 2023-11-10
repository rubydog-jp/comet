import 'dart:io';
import 'package:comet_cli/functions/run_git.dart';

const _initialBranch = 'main';
const _initialCommitMsg = 'init by Comet';

Future<void> runGitInit() async {
  final process = await runGit(
    [
      'init',
      '--initial-branch=$_initialBranch',
    ],
    onStdout: (msg) {
      stdout.write(msg);
    },
    onStderr: (msg) {
      stdout.write(msg);
    },
  );

  await process.exitCode;

  /* first commit */
  final commitProcess = await runGit(
    [
      'commit',
      '--allow-empty',
      '-m',
      _initialCommitMsg,
    ],
    onStdout: (msg) {
      stdout.write(msg);
    },
    onStderr: (msg) {
      stdout.write(msg);
    },
  );

  await commitProcess.exitCode;
}
