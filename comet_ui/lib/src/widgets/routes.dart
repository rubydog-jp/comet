import 'package:comet/src/widgets/page_builder.dart';
import 'package:go_router/go_router.dart';
import 'package:comet/src/logic/to_ui_state.dart';
import 'package:comet/src/types/inline_widget.dart';
import 'package:comet/src/types/gen.dart';
import 'package:comet/src/viewer.dart';

class CometViewerRoute extends GoRoute {
  CometViewerRoute._({
    required super.path,
    required super.pageBuilder,
  });

  factory CometViewerRoute({
    required String pathPattern,
    required CometGenData cometData,
    required CometInlineWidgets inlineWidgets,
  }) {
    return CometViewerRoute._(
      path: pathPattern,
      pageBuilder: (_, state) => noTransitionAnimatiobnPage(
        child: CometViewer(
          pathParams: state.pathParameters,
          cometData: cometData,
          inlineWidgets: inlineWidgets,
        ),
      ),
    );
  }
}

List<GoRoute> cometRoutes({
  required CometGenData cometData,
  required CometInlineWidgets inlineWidgets,
}) {
  return [
    // URL: /shelf
    CometViewerRoute(
      pathPattern: cometShelfPath,
      cometData: cometData,
      inlineWidgets: inlineWidgets,
    ),
    // URL: /shelf/book
    CometViewerRoute(
      pathPattern: cometBookPath,
      cometData: cometData,
      inlineWidgets: inlineWidgets,
    ),
    // URL: /shelf/book/page
    CometViewerRoute(
      pathPattern: cometPagePath,
      cometData: cometData,
      inlineWidgets: inlineWidgets,
    ),
  ];
}
