import 'dart:io';

Future<void> runFlutterRestart(Process process) async {
  process.stdin.write('r');
  return;
}
