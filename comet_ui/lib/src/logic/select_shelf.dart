import 'package:comet/src/types/state.dart';
import 'package:comet/src/types/ui.dart';

/// ここの null は遷移先のページが見つからない null
UiState? selectShelf(UiShelf newShelf, UiState oldState) {
  if (newShelf.books.isEmpty) {
    return UiState(
      selectedShelf: newShelf,
      selectedBook: null,
      selectedPage: null,
    );
  }

  // なるべく以前のURLを維持する
  var newBookIndex = newShelf.books.indexWhere(
    (it) => it.urlSeg == oldState.selectedBook?.urlSeg,
  );

  // 以前のURLを維持できないなら先頭のBookを優先表示
  if (newBookIndex < 0) {
    newBookIndex = 0;
  }

  final newBook = newShelf.books[newBookIndex];

  if (newBook.pages.isEmpty) {
    return UiState(
      selectedShelf: newShelf,
      selectedBook: newBook,
      selectedPage: null,
    );
  }

  var newPageIndex = newBook.pages.indexWhere(
    (it) => it.urlSeg == oldState.selectedPage?.urlSeg,
  );

  if (newPageIndex < 0) {
    newPageIndex = 0;
  }

  final newPage = newBook.pages[newPageIndex];

  return UiState(
    selectedShelf: newShelf,
    selectedBook: newBook,
    selectedPage: newPage,
  );
}
