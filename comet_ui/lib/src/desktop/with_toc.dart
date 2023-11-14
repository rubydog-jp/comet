import 'package:comet/src/types/inline_widget.dart';
import 'package:comet/src/types/state.dart';
import 'package:comet/src/widgets/md_body.dart';
import 'package:comet/src/widgets/responsive.dart';
import 'package:flutter/material.dart';
import 'package:markdown_widget/markdown_widget.dart';

class WithTocView extends StatefulWidget {
  const WithTocView({
    super.key,
    required this.state,
    required this.inlineWidgets,
  });

  final UiState state;
  final CometInlineWidgets inlineWidgets;

  @override
  State<WithTocView> createState() => _WithTocViewState();
}

class _WithTocViewState extends State<WithTocView> {
  late final TocController tocController;

  @override
  void initState() {
    super.initState();
    tocController = TocController();
  }

  @override
  void dispose() {
    tocController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screen = ScreenRef(context).watch(screenProvider);
    final designW = screen.designW(280);

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: MdBodyView(
            tocController: tocController,
            state: widget.state,
            inlineWidgets: widget.inlineWidgets,
          ),
        ),
        SizedBox(
          width: designW,
          child: Column(
            children: [
              const SizedBox(height: 10),
              Expanded(
                child: Row(
                  children: [
                    Container(
                      width: 1,
                      height: 120,
                      color: Colors.grey[300],
                    ),
                    Expanded(
                      child: TocWidget(
                        controller: tocController,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
