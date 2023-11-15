import 'package:comet/src/types/state.dart';
import 'package:comet/src/types/ui.dart';

/// ここの null は遷移先のページが見つからない null
UiState? selectBook(UiBook newBook, UiState oldState) {
  if (newBook.pages.isEmpty) {
    return oldState.copyWith(
      selectedBook: newBook,
      selectedPage: null,
    );
  }

  final newPage = newBook.pages.first;

  final newState = oldState.copyWith(
    selectedBook: newBook,
    selectedPage: newPage,
  );
  return newState;
}
