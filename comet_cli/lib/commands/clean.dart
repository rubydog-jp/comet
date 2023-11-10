import 'package:comet_cli/config.dart';
import 'package:comet_cli/functions/read_yaml.dart';
import 'package:comet_cli/functions/run_flutter_clean.dart';
import 'package:comet_cli/functions/run_flutter_pub_get.dart';
import 'package:comet_cli/utils/progress_star.dart';

Future<void> clean() async {
  // Cometプロジェクトかどうか
  final cometYaml = readCometYaml();
  if (cometYaml == null) {
    print('Not found $cometYamlName');
    return;
  }

  ProgressStar.start('flutter clean..');
  await runFlutterClean(cometYaml.flutterProject.root);

  ProgressStar.message('flutter pub get..');
  await runFlutterPubGet(cometYaml.flutterProject.root);

  ProgressStar.stop();
}
