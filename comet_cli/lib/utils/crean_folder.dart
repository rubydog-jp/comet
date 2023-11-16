import 'dart:io';

/// clean files in folders
void cleanFolder(String folderPath) {
  final folder = Directory(folderPath);
  final folderExists = folder.existsSync();

  if (folderExists) {
    final entries = folder.listSync();
    for (final entity in entries) {
      if (entity is Directory) {
        cleanFolder(entity.path);
      }
      entity.deleteSync();
    }
  } else {
    print('Folder not found: $folderPath');
  }
}
