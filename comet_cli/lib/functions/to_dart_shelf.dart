import 'package:comet_cli/functions/code_name.dart';
import 'package:comet_cli/types/src.dart';
import 'package:comet_cli/types/yaml.dart';

/// convert src shelf to dart code
String toDartShelf(SrcShelf srcShelf, CometYaml cometYaml) {
  final importBuf = StringBuffer();
  final booksBuf = StringBuffer();
  final codeName = toCodeName(srcShelf.name);
  for (final book in srcShelf.books) {
    final bookCodeName = toCodeName(book.name);
    importBuf.writeln("import '$codeName/$bookCodeName.dart';");
    booksBuf.writeln("  $bookCodeName,");
  }

  final content = """
// ignore_for_file: constant_identifier_names, file_names
import 'package:comet/comet.dart';
${importBuf.toString()}
const List<CometGenBook> _books = [
${booksBuf.toString()}];

const $codeName = CometGenShelf(
  srcName: '${srcShelf.name}',
  books: _books,
);
""";
  return content;
}
