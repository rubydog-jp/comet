import 'dart:io';
import 'package:comet_cli/utils/can_use_command.dart';

Future<Process> runGit(
  List<String> args, {
  void Function(String msg)? onStdout,
  void Function(String msg)? onStderr,
}) async {
  Process? process;

  final canUseGit = await canUseCommand('git');
  if (canUseGit) {
    process = await Process.start(
      'git',
      args,
      runInShell: true,
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

  throw Exception('Command Not Found: git');
}
