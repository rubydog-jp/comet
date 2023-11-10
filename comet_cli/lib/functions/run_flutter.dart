import 'dart:io';
import 'package:comet_cli/utils/can_use_command.dart';

Future<Process> runFlutter(
  String projectPath,
  List<String> args, {
  void Function(String msg)? onStdout,
  void Function(String msg)? onStderr,
}) async {
  Process? process;
  final canUseFlutter = await canUseCommand('flutter');
  if (canUseFlutter) {
    process = await Process.start(
      'flutter',
      args,
      runInShell: true,
      workingDirectory: projectPath,
    );
  }

  final canUseFvm = await canUseCommand('fvm');
  if (canUseFvm) {
    process = await Process.start(
      'fvm',
      [
        'flutter',
        ...args,
      ],
      runInShell: true,
      workingDirectory: projectPath,
    );
  }

  final decoder = const SystemEncoding().decoder;
  process?.stdout.listen((data) {
    if (onStdout == null) return;
    final msg = decoder.convert(data);
    onStdout.call(msg);
  });

  process?.stderr.listen((data) {
    if (onStderr == null) return;
    final msg = decoder.convert(data);
    onStderr.call(msg);
  });

  if (process != null) {
    return process;
  }

  throw Exception('Command Not Found: flutter');
}
