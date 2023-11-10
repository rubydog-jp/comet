import 'package:flutter/material.dart';
import 'package:comet/src/desktop/with_menu.dart';
import 'package:comet/src/types/inline_widget.dart';
import 'package:comet/src/types/state.dart';
import 'package:comet/src/types/ui.dart';
import 'package:comet/src/widgets/footer.dart';
import 'package:comet/src/desktop/tab_bar.dart';
import 'package:comet/src/theme.dart';

class DesktopViewer extends StatelessWidget {
  const DesktopViewer({
    super.key,
    required this.data,
    required this.state,
    required this.inlineWidgets,
    required this.onSelectShelf,
    required this.onSelectBook,
    required this.onSelectPage,
  });

  final UiData data;
  final UiState state;
  final CometInlineWidgets inlineWidgets;
  final void Function(UiBook newValue) onSelectBook;
  final void Function(UiShelf newValue) onSelectShelf;
  final void Function(UiPage newValue) onSelectPage;

  @override
  Widget build(BuildContext context) {
    final bodyHeight = MediaQuery.sizeOf(context).height -
        CometTheme.tabbarHeight -
        CometTheme.dividerWidth;

    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        child: Column(
          children: [
            CometTabBar(
              data: data,
              state: state,
              onSelectBook: onSelectBook,
              onSelectShelf: onSelectShelf,
            ),
            Container(
              height: CometTheme.dividerWidth,
              color: Colors.grey[300],
            ),
            SizedBox(
              height: bodyHeight,
              child: WithMenuView(
                state: state,
                inlineWidgets: inlineWidgets,
                onSelectPage: onSelectPage,
              ),
            ),
            SizedBox(
              height: CometTheme.footerHeight,
              child: Footer(data: data),
            ),
          ],
        ),
      ),
    );
  }
}
