import 'package:comet_cli/functions/code_name.dart';
import 'package:comet_cli/config.dart';
import 'package:comet_cli/functions/to_dart_book.dart';
import 'package:comet_cli/functions/to_raw_page.dart';
import 'package:comet_cli/types/raw.dart';
import 'package:comet_cli/types/src.dart';

RawBook toRawBook(SrcBook srcBook, String shelfFolderPath) {
  // Book: src --> raw
  final codeName = toCodeName(srcBook.name);
  final folderPath = '$shelfFolderPath/$codeName';
  final filePath = '$folderPath$dartExt';
  // Page: src --> raw
  final List<RawPage> rawPages = [];
  for (final srcPage in srcBook.pages) {
    final rawPage = toRawPage(srcPage, folderPath);
    rawPages.add(rawPage);
  }

  final dart = toDartBook(srcBook);
  final rawBook = RawBook(
    pages: rawPages,
    fileContent: dart,
    folderPath: folderPath,
    filePath: filePath,
  );
  return rawBook;
}
