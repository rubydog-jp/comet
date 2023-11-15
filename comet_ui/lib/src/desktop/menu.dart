import 'package:flutter/material.dart';
import 'package:comet/src/types/state.dart';
import 'package:comet/src/types/ui.dart';
import 'package:comet/src/desktop/menu_item.dart';

class MenuView extends StatelessWidget {
  const MenuView({
    super.key,
    required this.state,
    required this.onSelectPage,
  });

  final UiState state;
  final void Function(UiPage newIndex) onSelectPage;

  @override
  Widget build(BuildContext context) {
    final items = List.generate(
      state.selectedBook?.pages.length ?? 0,
      (index) {
        final page = state.selectedBook?.pages[index];
        return MenuItem(
          page: page!,
          isSelected: state.selectedPage?.urlSeg == page.urlSeg,
          onTap: () => onSelectPage(page),
        );
      },
    );

    return Container(
      color: Colors.white,
      child: ListView(
        children: items,
      ),
    );
  }
}
