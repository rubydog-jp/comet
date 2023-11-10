import 'dart:io';

/// 相対パスからサブフォルダの名前を取得
Future<List<String>> readSubFolderNames(String path) async {
  final directory = Directory(path);
  final List<String> subFolders = [];
  final entities = directory.listSync();
  for (final entity in entities) {
    if (entity is! Directory) continue;
    final pathSegments = List.of(entity.uri.pathSegments);
    pathSegments.removeWhere((it) => it.isEmpty);
    subFolders.add(pathSegments.last);
  }
  return subFolders;
}

/// 現在のフォルダー内のサブフォルダの名前を取得
Future<List<String>> readSubFolderNamesCurrent() async {
  final directory = Directory.current;
  final List<String> subFolders = [];
  final entities = directory.listSync();
  for (final entity in entities) {
    if (entity is! Directory) continue;
    final pathSegments = List.of(entity.uri.pathSegments);
    pathSegments.removeWhere((it) => it.isEmpty);
    subFolders.add(pathSegments.last);
  }
  return subFolders;
}
