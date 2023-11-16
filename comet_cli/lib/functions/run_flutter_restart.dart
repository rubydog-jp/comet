import 'dart:io';

/// restart flutter app
Future<void> runFlutterRestart(Process process) async {
  process.stdin.write('r');
  return;
}
