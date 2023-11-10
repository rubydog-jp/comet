import 'package:comet_cli/functions/code_name.dart';
import 'package:comet_cli/types/src.dart';

String toDartBook(SrcBook srcBook) {
  final importBuf = StringBuffer();
  final pagesBuf = StringBuffer();
  final codeName = toCodeName(srcBook.name);
  for (final page in srcBook.pages) {
    final pageCodeName = toCodeName(page.name);
    importBuf.writeln("import '$codeName/$pageCodeName.dart';");
    pagesBuf.writeln("  $pageCodeName,");
  }

  final content = """
// ignore_for_file: constant_identifier_names, file_names
import 'package:comet/comet.dart';
${importBuf.toString()}
const List<CometGenPage> _pages = [
${pagesBuf.toString()}];

const $codeName = CometGenBook(
  srcName: '${srcBook.name}',
  pages: _pages,
);
""";
  return content;
}
