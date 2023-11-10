import 'dart:convert';
import 'package:comet_cli/functions/code_name.dart';
import 'package:comet_cli/types/src.dart';

String toDartPage(SrcPage srcPage) {
  final rawMarkdown = utf8.decode(srcPage.content);
  final escapedMarkdown = _escapeForDart(rawMarkdown);

  final codeName = toCodeName(srcPage.name);
  final content = """
// ignore_for_file: constant_identifier_names, file_names
import 'package:comet/comet.dart';

const $codeName = CometGenPage(
  srcName: '${srcPage.name}',
  content: _content,
);

const _content = '''
$escapedMarkdown
''';
""";
  return content;
}

String _escapeForDart(String rawString) {
  var editting = rawString;
  // エスケープが必要な特殊文字のリスト
  List<String> specialCharacters = ['\'\'\'', '\$'];

  // エスケープ処理
  for (final char in specialCharacters) {
    editting = editting.replaceAll(char, '\\$char');
  }

  return editting;
}
