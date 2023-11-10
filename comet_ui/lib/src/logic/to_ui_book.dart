import 'package:comet/src/logic/to_src_name.dart';
import 'package:comet/src/logic/to_ui_page.dart';
import 'package:comet/src/types/ui.dart';
import 'package:comet/src/types/gen.dart';

UiBook toUiBook(CometGenBook genBook) {
  final srcName = toSrcName(genBook.srcName, false);

  final tuples = genBook.pages.map(
    (genPage) {
      final srcName = toSrcName(genPage.srcName, false);
      return (genPage, srcName);
    },
  );

  final sortingTuples = tuples.toList();
  sortingTuples.sort(
    (a, b) => a.$2.sortTag.compareTo(b.$2.sortTag),
  );

  final uiPages = sortingTuples.map((tuple) {
    return toUiPage(tuple.$1);
  }).toList();

  return UiBook(
    urlSeg: srcName.urlSeg,
    title: srcName.title,
    pages: uiPages,
  );
}
