import 'package:flutter/material.dart';
import 'package:comet/src/mobile/drawer.dart';
import 'package:comet/src/types/state.dart';
import 'package:comet/src/widgets/footer.dart';
import 'package:comet/src/types/inline_widget.dart';
import 'package:comet/src/widgets/md_body.dart';
import 'package:comet/src/theme.dart';
import 'package:comet/src/types/ui.dart';

class MobileViewer extends StatelessWidget {
  const MobileViewer({
    super.key,
    required this.data,
    required this.state,
    required this.inlineWidgets,
    required this.onSelectShelf,
    required this.onSelectBookAndPage,
  });

  final UiData data;
  final UiState state;
  final CometInlineWidgets inlineWidgets;
  final void Function(UiShelf newValue) onSelectShelf;
  final void Function(UiBook newBook, UiPage newPage) onSelectBookAndPage;

  @override
  Widget build(BuildContext context) {
    final bodyHeight = MediaQuery.sizeOf(context).height -
        CometTheme.tabbarHeight -
        CometTheme.dividerWidth;

    return Scaffold(
      drawer: MenuDrawer(
        data: data,
        state: state,
        onSelectShelf: onSelectShelf,
        onSelectBookAndPage: onSelectBookAndPage,
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(data.siteTitle),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: bodyHeight,
            child: MdBodyView(
              tocController: null,
              state: state,
              inlineWidgets: inlineWidgets,
            ),
          ),
          SizedBox(
            height: CometTheme.footerHeight,
            child: Footer(data: data),
          ),
        ],
      ),
    );
  }
}
