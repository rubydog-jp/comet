import 'dart:io';

import 'package:comet_cli/config.dart';
import 'package:comet_cli/utils/progress_star.dart';

/// process of upgrade
Future<void> upgrade() async {
  ProgressStar.start('upgrade $version --> latest');

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

  ProgressStar.stop(msg: 'Completed.');
  print('');
  print('  \$ comet --version');
  print('');
}
