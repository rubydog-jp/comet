import 'package:comet/src/types/ui.dart';

const _keep = Object();

class UiState {
  const UiState({
    required this.selectedShelf,
    required this.selectedBook,
    required this.selectedPage,
  });
  final UiShelf selectedShelf;
  final UiBook? selectedBook;
  final UiPage? selectedPage;

  UiState copyWith({
    Object? selectedShelf = _keep,
    Object? selectedBook = _keep,
    Object? selectedPage = _keep,
  }) {
    return UiState(
      selectedShelf: selectedShelf == _keep
          ? this.selectedShelf
          : selectedShelf as UiShelf,
      selectedBook:
          selectedBook == _keep ? this.selectedBook : selectedBook as UiBook?,
      selectedPage:
          selectedPage == _keep ? this.selectedPage : selectedPage as UiPage?,
    );
  }
}
