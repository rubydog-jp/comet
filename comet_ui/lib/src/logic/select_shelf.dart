import 'package:comet/src/types/state.dart';
import 'package:comet/src/types/ui.dart';

/// ここの null は遷移先のページが見つからない null
UiState? selectShelf(UiShelf newShelf, UiState oldState) {
  var newBookIndex = newShelf.books.indexWhere(
    (it) => it.urlSeg == oldState.selectedBook.urlSeg,
  );
  if (newBookIndex < 0) {
    newBookIndex = 0;
  }
  if (newShelf.books.isEmpty) return null;
  final newBook = newShelf.books[newBookIndex];
  if (newBook.pages.isEmpty) return null;
  var newPageIndex = newBook.pages.indexWhere(
    (it) => it.urlSeg == oldState.selectedPage.urlSeg,
  );
  if (newPageIndex < 0) {
    newPageIndex = 0;
  }
  if (newBook.pages.isEmpty) return null;
  final newPage = newBook.pages[newPageIndex];
  final newState = oldState.copyWith(
    selectedShelf: newShelf,
    selectedBook: newBook,
    selectedPage: newPage,
  );
  return newState;
}
