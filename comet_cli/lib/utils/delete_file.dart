import 'dart:io';

/// delete a file
void deleteFile(String filePath) {
  final file = File(filePath);
  final exists = file.existsSync();
  if (!exists) return;
  file.deleteSync();
}
