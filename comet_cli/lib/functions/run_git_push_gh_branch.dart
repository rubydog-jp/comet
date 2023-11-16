import 'dart:io';
import 'package:comet_cli/config.dart';
import 'package:comet_cli/functions/run_git.dart';

/// git push
Future<void> runGitPushGhBranch() async {
  final process = await runGit(
    [
      'push',
      'origin',
      githubPagesBranch,
    ],
    onStdout: (msg) {
      stdout.write(msg);
    },
    onStderr: (msg) {
      stdout.write(msg);
    },
  );

  await process.exitCode;
}
