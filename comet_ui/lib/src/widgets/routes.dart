import 'package:go_router/go_router.dart';
import 'package:comet/src/logic/to_ui_state.dart';
import 'package:comet/src/types/inline_widget.dart';
import 'package:comet/src/types/gen.dart';
import 'package:comet/src/viewer.dart';

class CometViewerRoute extends GoRoute {
  CometViewerRoute._({
    required super.path,
    required super.builder,
  });

  factory CometViewerRoute({
    required CometGenData cometData,
    required CometInlineWidgets inlineWidgets,
  }) {
    return CometViewerRoute._(
      path: cometViewerPath,
      builder: (_, state) {
        return CometViewer(
          pathParams: state.pathParameters,
          cometData: cometData,
          inlineWidgets: inlineWidgets,
        );
      },
    );
  }
}