import 'dart:io';

/// if git has remote repo ir not
Future<bool> runGitHasRemote() async {
  final result = await Process.run(
    'git',
    ['remote'],
  );
  if (result.exitCode != 0) {
    throw Exception('Failed to git remote: exitCode');
  }
  if (result.stdout is! String) {
    throw Exception('Failed to git remote: stdoutType');
  }
  final remotes = result.stdout as String;
  final remoteExists = remotes.isNotEmpty;
  return remoteExists;
}
