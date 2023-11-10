import 'package:comet/src/types/state.dart';
import 'package:comet/src/types/ui.dart';

/// ここの null は遷移先のページが見つからない null
UiState? selectPage(UiPage newPage, UiState oldState) {
  final newState = oldState.copyWith(
    selectedPage: newPage,
  );
  return newState;
}
