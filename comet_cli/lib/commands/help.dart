import 'dart:io';

Future<void> showHelp() async {
  final localeName = Platform.localeName;
  print(localeName);
  print('https://pub.dev/packages/comet_cli');
}
