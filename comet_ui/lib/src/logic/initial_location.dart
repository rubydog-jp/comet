import 'package:comet/src/logic/resolve_locale.dart';
import 'package:comet/src/logic/to_ui_data.dart';
import 'package:comet/src/logic/to_url_path.dart';
import 'package:comet/src/types/gen.dart';
import 'package:comet/src/types/state.dart';

/// ホーム画面を作成するまでの間 使用する
/// 最初の画面を計算して返す
String cometInitialLocation(CometGenData cometData) {
  final uiData = toUiData(cometData);
  final shelfSeg = resolveLocale(uiData);
  final shelf = uiData.shelves.firstWhere(
    (it) => it.urlSeg == shelfSeg,
  );
  if (shelf.books.isEmpty) {
    // MEMO: 内部コードではBookだが、ユーザーに伝えるメッセージはすべてPageへ統一
    throw Exception('CometError: Page Not Found in ${shelf.title}');
  }
  final bookIndex = shelf.books.indexWhere(
    (it) => it.pages.isNotEmpty,
  );
  if (bookIndex < 0) {
    throw Exception('CometError: Page Not Found in ${shelf.title}');
  }
  final book = shelf.books[bookIndex];
  final page = book.pages.first;
  final state = UiState(
    selectedShelf: shelf,
    selectedBook: book,
    selectedPage: page,
  );

  return toUrlPath(state);
}
