import 'dart:io';

/// make a folder
void writeFolder(String path) {
  final newFolder = Directory(path);
  final alreadyExists = newFolder.existsSync();

  if (alreadyExists) {
    return;
  }

  // 親ディレクトリも作成
  newFolder.createSync(recursive: true);
}
