import 'package:comet/src/types/state.dart';

String toUrlPath(UiState state) {
  final shelfSeg = state.selectedShelf.urlSeg;
  final bookSeg = state.selectedBook?.urlSeg;
  if (bookSeg == null) {
    return '/$shelfSeg';
  }
  final pageSeg = state.selectedPage?.urlSeg;
  if (pageSeg == null) {
    return '/$shelfSeg/$bookSeg';
  }
  return '/$shelfSeg/$bookSeg/$pageSeg';
}
