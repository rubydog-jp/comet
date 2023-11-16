import 'dart:io';
import 'package:comet_cli/functions/run_git.dart';

/// git remote add origin
Future<void> runGitAddOrigin(String userId, String repoName) async {
  final process = await runGit(
    [
      'remote',
      'add',
      'origin',
      'https://github.com/$userId/$repoName.git',
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
