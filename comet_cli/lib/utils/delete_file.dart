import 'dart:io';

void deleteFile(String filePath) {
  final file = File(filePath);
  final exists = file.existsSync();
  if (!exists) return;
  file.deleteSync();
}
