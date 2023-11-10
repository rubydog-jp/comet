import 'dart:io';
import 'package:archive/archive.dart';
import 'package:comet_cli/config.dart';

Future<void> unzip(List<int> bytes, String outputFolderName) async {
  // bytes --> zip
  final decoder = ZipDecoder();
  final archive = decoder.decodeBytes(bytes);

  // 既存のファイルやフォルダが存在するか確認
  final outputFolder = Directory(outputFolderName);
  final outputFolderIsAlreadyExists = outputFolder.existsSync();
  if (outputFolderIsAlreadyExists) {
    throw Exception('the folder already exists');
  }

  // zip to nodes
  for (final node in archive) {
    // skip __MACOSX
    final skip = node.name.startsWith('__MACOSX/');
    if (skip) continue;

    final nodePath = node.name.replaceFirst(templateName, outputFolderName);
    if (node.isFile) {
      // file
      final file = File(nodePath);
      file.createSync(recursive: true);
      file.writeAsBytesSync(node.content as List<int>);
    } else {
      // folder
      final folder = Directory(nodePath);
      folder.createSync(recursive: true);
    }
  }
}
