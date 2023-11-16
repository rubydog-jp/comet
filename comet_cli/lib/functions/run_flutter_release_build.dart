import 'package:comet_cli/functions/run_flutter.dart';

/// flutter build --release
Future<void> runFlutterReleaseBuild(
  String project,
  String repoName,
) async {
  final process = await runFlutter(
    project,
    [
      'build',
      'web',
      '--release',
      '--web-renderer',
      'html',
      '--base-href',
      '/$repoName/',
    ],
  );
  await process.exitCode;
}
