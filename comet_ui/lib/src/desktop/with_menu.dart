import 'package:comet/src/desktop/with_toc.dart';
import 'package:flutter/material.dart';
import 'package:comet/src/types/inline_widget.dart';
import 'package:comet/src/types/state.dart';
import 'package:comet/src/types/ui.dart';
import 'package:comet/src/desktop/menu.dart';

class WithMenuView extends StatelessWidget {
  const WithMenuView({
    super.key,
    required this.state,
    required this.inlineWidgets,
    required this.onSelectPage,
  });

  final UiState state;
  final CometInlineWidgets inlineWidgets;
  final void Function(UiPage newValue) onSelectPage;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 300,
          child: MenuView(
            state: state,
            onSelectPage: onSelectPage,
          ),
        ),
        Container(
          width: 1,
          color: Colors.grey[300],
        ),
        Expanded(
          child: WithTocView(
            state: state,
            inlineWidgets: inlineWidgets,
          ),
        ),
      ],
    );
  }
}
