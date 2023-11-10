import 'dart:io';

void writeStringFile(String path, String content) {
  final file = File(path);
  file.writeAsStringSync(content);
}
