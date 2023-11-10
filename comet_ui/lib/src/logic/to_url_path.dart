import 'package:comet/src/types/state.dart';

String toUrlPath(UiState state) {
  final shelfSeg = state.selectedShelf;
  final bookSeg = state.selectedBook;
  final pageSeg = state.selectedPage;
  return '/$shelfSeg/$bookSeg/$pageSeg';
}
