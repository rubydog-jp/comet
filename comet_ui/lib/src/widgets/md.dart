import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:markdown/markdown.dart' as m;
import 'package:markdown_widget/markdown_widget.dart';
import 'package:flutter_highlighting/themes/a11y-dark.dart';
import 'package:comet/src/html_support.dart/html_support.dart';
import 'package:comet/src/types/state.dart';
import 'package:comet/src/types/inline_widget.dart';

// {{WIDGET_NAME}}
const _inlineWidgetBegin = '{{';
const _inlineWidgetEnd = '}}';
const _inlineWidgetPattern = "$_inlineWidgetBegin(.*?)$_inlineWidgetEnd";

class HtmlNode extends ElementNode {
  HtmlNode(
    this.text,
    this.visitor,
  );
  final String text;
  final WidgetVisitor visitor;

  @override
  void onAccepted(SpanNode parent) {
    children.clear();
    final spanNodes = parseHtml(
      m.Text(text),
      visitor: visitor,
      parentStyle: parentStyle,
    );
    for (final spanNode in spanNodes) {
      accept(spanNode);
    }
  }
}

class WidgetNode extends TextNode {
  WidgetNode({
    super.text,
    super.style,
    required this.inlineWidgets,
    required this.widgetName,
  });

  final CometInlineWidgets inlineWidgets;
  final String widgetName;

  @override
  InlineSpan build() {
    final builder = inlineWidgets[widgetName];

    final widget = Builder(
      builder: (context) {
        if (builder == null) {
          return Text('Widget not found for name: $widgetName');
        }
        return builder(context);
      },
    );

    return WidgetSpan(
      alignment: PlaceholderAlignment.baseline,
      baseline: TextBaseline.alphabetic,
      child: widget,
    );
  }
}

MarkdownGenerator createGenerator(CometInlineWidgets inlineWidgets) {
  return MarkdownGenerator(
    textGenerator: (node, config, visitor) {
      final text = node.textContent;

      // HTML ?
      final hasHtml = text.contains(htmlRep);
      if (hasHtml) {
        return HtmlNode(
          text,
          visitor,
        );
      }

      // Widget ?
      final widgetRegExp = RegExp(_inlineWidgetPattern);
      final widgetMatch = widgetRegExp.firstMatch(text);
      final widgetName = widgetMatch?.group(1);
      final hasWidget = widgetName != null;
      if (hasWidget) {
        return WidgetNode(
          inlineWidgets: inlineWidgets,
          widgetName: widgetName,
        );
      }

      // Text
      return TextNode(
        text: text,
        style: config.p.textStyle,
      );
    },
  );
}

class MdView extends StatelessWidget {
  const MdView({
    super.key,
    required this.state,
    required this.inlineWidgets,
  });

  final UiState state;
  final CometInlineWidgets inlineWidgets;

  @override
  Widget build(BuildContext context) {
    return MarkdownWidget(
      padding: const EdgeInsets.all(12),
      data: state.selectedPage.content,
      config: MarkdownConfig(
        configs: [
          TableConfig(
            border: TableBorder.all(
              borderRadius: const BorderRadius.all(Radius.circular(2)),
              width: 1.5,
              color: Colors.grey,
            ),
          ),
          // code block
          PreConfig(
            theme: a11yDarkTheme,
            textStyle: GoogleFonts.jetBrainsMono(),
            decoration: BoxDecoration(
              color: Colors.grey[900],
              borderRadius: const BorderRadius.all(Radius.circular(8)),
            ),
            styleNotMatched: const TextStyle(color: Colors.white),
            language: 'dart',
          ),
        ],
      ),
      markdownGenerator: createGenerator(inlineWidgets),
    );
  }
}
