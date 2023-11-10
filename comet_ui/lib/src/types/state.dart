import 'package:comet/src/types/ui.dart';

class UiState {
  const UiState({
    required this.selectedShelf,
    required this.selectedBook,
    required this.selectedPage,
  });
  final UiShelf selectedShelf;
  final UiBook selectedBook;
  final UiPage selectedPage;

  UiState copyWith({
    UiShelf? selectedShelf,
    UiBook? selectedBook,
    UiPage? selectedPage,
  }) {
    return UiState(
      selectedShelf: selectedShelf ?? this.selectedShelf,
      selectedBook: selectedBook ?? this.selectedBook,
      selectedPage: selectedPage ?? this.selectedPage,
    );
  }
}
