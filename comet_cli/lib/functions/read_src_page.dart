import 'dart:io';
import 'package:comet_cli/types/src.dart';

/// read src page
Future<SrcPage> readSrcPage(String folderPath, String fileName) async {
  final path = '$folderPath/$fileName';
  return readSrcPageFullPath(path);
}

/// read src page with path
Future<SrcPage> readSrcPageFullPath(String path) async {
  final file = File(path);
  final content = file.readAsBytesSync();
  final segments = path.split(Platform.pathSeparator);
  final page = SrcPage(
    name: segments.last,
    content: content,
  );
  return page;
}
