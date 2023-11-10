import 'package:comet/src/types/state.dart';

String toUrlPath(UiState state) {
  final shelfSeg = state.selectedShelf.urlSeg;
  final bookSeg = state.selectedBook.urlSeg;
  final pageSeg = state.selectedPage.urlSeg;
  return '/$shelfSeg/$bookSeg/$pageSeg';
}
