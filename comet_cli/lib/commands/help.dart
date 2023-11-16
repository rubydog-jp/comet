import 'dart:io';

/// process of help
Future<void> showHelp() async {
  print('');
  print('  --help       Show usage information');
  print('  --version    Show version number');
  print('  create       Create new site files');
  print('               EX \$ comet create my_site');
  print('  start        See your site in local browser');
  print('  deploy       Publish your site');
  print('    --no-push  Run deploy without auto-push');
  print('  doctor       Noe on development..');
  print('  build        Generate .dart files from .md');
  print('  clean        Clean auto-generated files');
  print('  upgrade      Upgrade this comet command itself');
  print('');

  final localeName = Platform.localeName;
  if (localeName.startsWith('ja')) {
    print('詳細はこちらのページから');
    print('https://comet.rubydog.jp/');
    print('');
  } else {
    print('See more info');
    print('https://comet.rubydog.jp/');
    print('');
  }
}
