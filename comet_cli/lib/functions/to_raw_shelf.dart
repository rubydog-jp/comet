import 'package:comet_cli/functions/code_name.dart';
import 'package:comet_cli/config.dart';
import 'package:comet_cli/functions/to_dart_shelf.dart';
import 'package:comet_cli/functions/to_raw_book.dart';
import 'package:comet_cli/types/raw.dart';
import 'package:comet_cli/types/src.dart';
import 'package:comet_cli/types/yaml.dart';

RawShelf toRawShelf(
  SrcShelf srcShelf,
  String dataFolderPath,
  CometYaml cometYaml,
) {
  // Shelf: src --> raw
  final codeName = toCodeName(srcShelf.name);
  final folderPath = '$dataFolderPath/$codeName';
  final filePath = '$folderPath$dartExt';

  final List<RawBook> rawBooks = [];
  for (final srcBook in srcShelf.books) {
    final rawBook = toRawBook(srcBook, folderPath);
    rawBooks.add(rawBook);
  }

  final dart = toDartShelf(srcShelf, cometYaml);
  final rawShelf = RawShelf(
    books: rawBooks,
    fileContent: dart,
    folderPath: folderPath,
    filePath: filePath,
  );
  return rawShelf;
}
