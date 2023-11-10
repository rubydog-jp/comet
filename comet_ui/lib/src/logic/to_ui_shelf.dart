import 'package:comet/src/logic/to_src_name.dart';
import 'package:comet/src/logic/to_ui_book.dart';
import 'package:comet/src/types/ui.dart';
import 'package:comet/src/types/gen.dart';

UiShelf toUiShelf(CometGenShelf genShelf) {
  final srcName = toSrcName(genShelf.srcName, false);

  final tuples = genShelf.books.map(
    (genBook) {
      final srcName = toSrcName(genBook.srcName, false);
      return (genBook, srcName);
    },
  );

  final sortingTuples = tuples.toList();
  sortingTuples.sort(
    (a, b) => a.$2.sortTag.compareTo(b.$2.sortTag),
  );

  final uiBooks = sortingTuples.map((tuple) {
    return toUiBook(tuple.$1);
  }).toList();

  return UiShelf(
    title: srcName.title,
    urlSeg: srcName.urlSeg,
    books: uiBooks,
  );
}
