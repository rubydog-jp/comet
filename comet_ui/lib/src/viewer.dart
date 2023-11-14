import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:comet/src/widgets/not_found.dart';
import 'package:comet/src/types/gen.dart';
import 'package:comet/src/types/inline_widget.dart';
import 'package:comet/src/logic/select_book.dart';
import 'package:comet/src/logic/select_book_and_page.dart';
import 'package:comet/src/logic/select_page.dart';
import 'package:comet/src/logic/select_shelf.dart';
import 'package:comet/src/logic/to_ui_data.dart';
import 'package:comet/src/logic/to_ui_state.dart';
import 'package:comet/src/mobile/viewer.dart';
import 'package:comet/src/logic/to_url_path.dart';
import 'package:comet/src/desktop/viewer.dart';
import 'package:comet/src/widgets/responsive.dart';
import 'package:comet/src/widgets/google_fonts_loading.dart';

class CometViewer extends StatelessWidget {
  const CometViewer({
    super.key,
    required this.cometData,
    required this.inlineWidgets,
    required this.pathParams,
  });

  final CometGenData cometData;
  final CometInlineWidgets inlineWidgets;
  final Map<String, String> pathParams;

  @override
  Widget build(BuildContext context) {
    // UI で使いやすいデータ形式へ変換
    final uiData = toUiData(cometData);

    // 状態を算出
    final uiState = toUiState(pathParams, uiData);

    if (uiState == null) {
      return CometNotFoundPage(cometData);
    }

    return GoogleFontsLoading(
      // MEMO: 今後のアップデートでフォント指定
      fontFamily: 'Noto Sans JP',
      child: Scaffold(
        body: ResponsiveView(
          builder: (sizeClass) {
            return switch (sizeClass) {
              ScreenSizeClass.desktop => DesktopViewer(
                  data: uiData,
                  state: uiState,
                  inlineWidgets: inlineWidgets,
                  onSelectShelf: (newValue) {
                    final newState = selectShelf(newValue, uiState);
                    // 遷移先のページが見つからなければ何もしない
                    if (newState == null) return;
                    final urlPath = toUrlPath(newState);
                    GoRouter.of(context).go(urlPath);
                  },
                  onSelectBook: (newValue) {
                    final newState = selectBook(newValue, uiState);
                    // 遷移先のページが見つからなければ何もしない
                    if (newState == null) return;
                    final urlPath = toUrlPath(newState);
                    GoRouter.of(context).go(urlPath);
                  },
                  onSelectPage: (newValue) {
                    final newState = selectPage(newValue, uiState);
                    // 遷移先のページが見つからなければ何もしない
                    if (newState == null) return;
                    final urlPath = toUrlPath(newState);
                    GoRouter.of(context).go(urlPath);
                  },
                ),
              ScreenSizeClass.mobile => MobileViewer(
                  data: uiData,
                  state: uiState,
                  inlineWidgets: inlineWidgets,
                  onSelectShelf: (newValue) {
                    final newState = selectShelf(newValue, uiState);
                    // 遷移先のページが見つからなければ何もしない
                    if (newState == null) return;
                    final urlPath = toUrlPath(newState);
                    GoRouter.of(context).go(urlPath);
                  },
                  onSelectBookAndPage: (newBook, newPage) {
                    final newState = selectBookAndPage(
                      newBook,
                      newPage,
                      uiState,
                    );
                    // 遷移先のページが見つからなければ何もしない
                    if (newState == null) return;
                    final urlPath = toUrlPath(newState);
                    GoRouter.of(context).go(urlPath);
                  },
                ),
              ScreenSizeClass.unsupported => const Center(
                  child: Text('Screen is too small'),
                ),
            };
          },
        ),
      ),
    );
  }
}
