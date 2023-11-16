import 'dart:io';

/// write file with text content
void writeStringFile(String path, String content) {
  final file = File(path);
  file.writeAsStringSync(content);
}
