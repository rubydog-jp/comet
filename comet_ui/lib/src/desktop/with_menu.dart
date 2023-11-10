import 'package:flutter/material.dart';
import 'package:comet/src/types/inline_widget.dart';
import 'package:comet/src/types/state.dart';
import 'package:comet/src/types/ui.dart';
import 'package:comet/src/widgets/md.dart';
import 'package:comet/src/desktop/menu.dart';
import 'package:comet/src/widgets/responsive.dart';

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
    final screen = ScreenRef(context).watch(screenProvider);
    final designW = screen.designW(280);

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
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
          child: MdView(
            state: state,
            inlineWidgets: inlineWidgets,
          ),
        ),
        SizedBox(
          width: designW,
          child: Column(
            children: [
              const SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    width: 1,
                    height: 120,
                    color: Colors.grey[300],
                  ),
                  SizedBox(
                    height: 120,
                    child: Container(),
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
      ],
    );
  }
}
