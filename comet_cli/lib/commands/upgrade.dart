import 'dart:io';

Future<void> upgrade() async {
  final process = await Process.start(
    'dart',
    [
      'pub',
      'global',
      'activate',
      'comet_cli',
    ],
  );

  await process.exitCode;
}
