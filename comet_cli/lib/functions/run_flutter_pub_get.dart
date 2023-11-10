import 'package:comet_cli/functions/run_flutter.dart';

Future<void> runFlutterPubGet(
  String project,
) async {
  final process = await runFlutter(
    project,
    [
      'pub',
      'get',
    ],
  );
  await process.exitCode;
}
