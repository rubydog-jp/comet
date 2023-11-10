import 'dart:io';

/// --version オプションを持つコマンドのみ確認可能です
Future<bool> canUseCommand(String command) async {
  try {
    final result = await Process.run(command, ['--version']);
    return result.exitCode == 0;
  } catch (e) {
    return false;
  }
}
