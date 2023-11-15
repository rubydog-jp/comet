import 'package:comet/src/types/state.dart';
import 'package:comet/src/types/ui.dart';

const _shelfSegKey = 'shelf';
const _bookSegKey = 'book';
const _pageSegKey = 'page';
const cometShelfPath = '/:$_shelfSegKey';
const cometBookPath = '/:$_shelfSegKey/:$_bookSegKey';
const cometPagePath = '/:$_shelfSegKey/:$_bookSegKey/:$_pageSegKey';

/// null は状態がない = 画面が見つからない とする
/// このごの対応で 空フォルダーを許容して null state のケースをなくす
UiState? toUiState(
  Map<String, String> pathParams,
  UiData uiData,
) {
  if (uiData.shelves.isEmpty) {
    return null;
  }

  var shelfSeg = pathParams[_shelfSegKey];
  var bookSeg = pathParams[_bookSegKey];
  var pageSeg = pathParams[_pageSegKey];

  // invalid URL
  if (shelfSeg == null) return null;

  // encode URL
  shelfSeg = Uri.encodeFull(shelfSeg);

  final shelfIndex = uiData.shelves.indexWhere((it) {
    return it.urlSeg == shelfSeg;
  });

  // URL is valid, but not found
  if (shelfIndex < 0) return null;

  final selectedShelf = uiData.shelves[shelfIndex];

  if (bookSeg == null) {
    return UiState(
      selectedShelf: selectedShelf,
      selectedBook: null,
      selectedPage: null,
    );
  }

  // encode URL
  bookSeg = Uri.encodeFull(bookSeg);

  final bookIndex = selectedShelf.books.indexWhere((it) {
    return it.urlSeg == bookSeg;
  });

  if (bookIndex < 0) {
    return UiState(
      selectedShelf: selectedShelf,
      selectedBook: null,
      selectedPage: null,
    );
  }

  final selectedBook = selectedShelf.books[bookIndex];

  if (pageSeg == null) {
    return UiState(
      selectedShelf: selectedShelf,
      selectedBook: selectedBook,
      selectedPage: null,
    );
  }

  // encode URL
  pageSeg = Uri.encodeFull(pageSeg);

  final pageIndex = selectedBook.pages.indexWhere((it) {
    return it.urlSeg == pageSeg;
  });

  if (pageIndex < 0) {
    return UiState(
      selectedShelf: selectedShelf,
      selectedBook: selectedBook,
      selectedPage: null,
    );
  }

  final selectedPage = selectedBook.pages[pageIndex];

  final state = UiState(
    selectedShelf: selectedShelf,
    selectedBook: selectedBook,
    selectedPage: selectedPage,
  );

  return state;
}
