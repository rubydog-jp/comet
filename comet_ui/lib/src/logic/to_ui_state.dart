import 'package:comet/src/types/state.dart';
import 'package:comet/src/types/ui.dart';

const _shelfSegKey = 'shelf';
const _bookSegKey = 'book';
const _pageSegKey = 'page';
const cometViewerPath = '/:$_shelfSegKey/:$_bookSegKey/:$_pageSegKey';

/// null は状態がない = 画面が見つからない とする
/// このごの対応で 空フォルダーを許容して null state のケースをなくす
UiState? toUiState(
  Map<String, String> pathParams,
  UiData uiData,
) {
  var shelfSeg = pathParams[_shelfSegKey];
  var bookSeg = pathParams[_bookSegKey];
  var pageSeg = pathParams[_pageSegKey];

  if ([shelfSeg, bookSeg, pageSeg].contains(null)) {
    return null;
  }

  shelfSeg = Uri.encodeFull(shelfSeg!);
  bookSeg = Uri.encodeFull(bookSeg!);
  pageSeg = Uri.encodeFull(pageSeg!);

  if (uiData.shelves.isEmpty) {
    return null;
  }

  final shelfIndex = uiData.shelves.indexWhere((it) {
    return it.urlSeg == shelfSeg;
  });
  if (shelfIndex < 0) {
    return null;
  }

  final selectedShelf = uiData.shelves[shelfIndex];
  final bookIndex = selectedShelf.books.indexWhere((it) {
    return it.urlSeg == bookSeg;
  });
  if (bookIndex < 0) {
    return null;
  }
  final selectedBook = selectedShelf.books[bookIndex];
  final pageIndex = selectedBook.pages.indexWhere((it) {
    return it.urlSeg == pageSeg;
  });
  if (pageIndex < 0) {
    return null;
  }
  final selectedPage = selectedBook.pages[pageIndex];

  final state = UiState(
    selectedShelf: selectedShelf,
    selectedBook: selectedBook,
    selectedPage: selectedPage,
  );

  return state;
}
