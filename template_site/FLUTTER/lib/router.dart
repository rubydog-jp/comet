import 'package:comet/comet.dart';
import 'package:site/_comet_gen_/data.dart';
import 'package:site/widgets.dart';

final cometRouter = CometRouter(
  initialLocation: cometInitialLocation(cometData),
  routes: [
    CometViewerRoute(
      cometData: cometData,
      inlineWidgets: inlineWidgets,
    ),
  ],
  errorBuilder: (_, __) {
    return const CometNotFoundPage(cometData);
  },
);
