import 'dart:io';

/// 相対パスからファイルの名前を取得
Future<List<String>> readSubFileNames(String path) async {
  final folder = Directory(path);
  final List<String> fileNames = [];
  final entities = folder.listSync();
  for (final entity in entities) {
    if (entity is! File) continue;
    fileNames.add(entity.uri.pathSegments.last);
  }
  return fileNames;
}
