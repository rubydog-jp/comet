import 'package:comet_cli/functions/run_flutter.dart';

Future<void> runFlutterClean(
  String project,
) async {
  final process = await runFlutter(
    project,
    [
      'clean',
    ],
  );
  await process.exitCode;
}
