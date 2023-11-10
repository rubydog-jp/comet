import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
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
    final state = toUiState(pathParams, uiData);

    if (state == null) {
      return CometNotFoundPage(cometData);
    }

    return Theme(
      data: Theme.of(context).copyWith(
        // MEMO: 今後のアップデートでフォント対応
        textTheme: GoogleFonts.notoSansJpTextTheme(),
      ),
      child: Scaffold(
        body: ResponsiveView(
          builder: (sizeClass) {
            return switch (sizeClass) {
              ScreenSizeClass.desktop => DesktopViewer(
                  data: uiData,
                  state: state,
                  inlineWidgets: inlineWidgets,
                  onSelectShelf: (newValue) {
                    final newState = selectShelf(newValue, state);
                    // 遷移先のページが見つからなければ何もしない
                    if (newState == null) return;
                    final urlPath = toUrlPath(newState);
                    GoRouter.of(context).go(urlPath);
                  },
                  onSelectBook: (newValue) {
                    final newState = selectBook(newValue, state);
                    // 遷移先のページが見つからなければ何もしない
                    if (newState == null) return;
                    final urlPath = toUrlPath(newState);
                    GoRouter.of(context).go(urlPath);
                  },
                  onSelectPage: (newValue) {
                    final newState = selectPage(newValue, state);
                    // 遷移先のページが見つからなければ何もしない
                    if (newState == null) return;
                    final urlPath = toUrlPath(newState);
                    GoRouter.of(context).go(urlPath);
                  },
                ),
              ScreenSizeClass.phone => MobileViewer(
                  data: uiData,
                  state: state,
                  inlineWidgets: inlineWidgets,
                  onSelectShelf: (newValue) {
                    final newState = selectShelf(newValue, state);
                    // 遷移先のページが見つからなければ何もしない
                    if (newState == null) return;
                    final urlPath = toUrlPath(newState);
                    GoRouter.of(context).go(urlPath);
                  },
                  onSelectBookAndPage: (newBook, newPage) {
                    final newState = selectBookAndPage(
                      newBook,
                      newPage,
                      state,
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
