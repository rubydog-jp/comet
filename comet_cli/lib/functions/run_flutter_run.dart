import 'dart:io';
import 'package:comet_cli/functions/run_flutter.dart';

/// アプリ起動を判断するためのキーワード
/// Flutterからのログでこれが流れてきたらブラウザが起動したと判断する
/// 将来のFlutterの変更で壊れるかもしれない
/// 壊れたとしても onMaybeLaunched が呼ばれずにスルーされるだけ
const _appLaunchedKeyword = 'The Flutter DevTools';

/// flutter run
Future<void> runFlutterRun(
  String project,
  void Function(Process process) onProcessStarted,
  void Function() onMaybeLaunched,
) async {
  final process = await runFlutter(
    project,
    const [
      'run',
      '-d',
      'chrome',
    ],
    onStdout: (msg) {
      final startWithKeyword = msg.startsWith(_appLaunchedKeyword);
      if (startWithKeyword) {
        onMaybeLaunched();
      }
      stdout.write(msg);
    },
    onStderr: (msg) {
      stdout.write(msg);
    },
  );

  onProcessStarted(process);

  await process.exitCode;
}
