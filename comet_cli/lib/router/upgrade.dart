import 'package:args/args.dart';
import 'package:comet_cli/commands/upgrade.dart';
import 'package:comet_cli/utils/progress_star.dart';

class UpgradeRouter {
  Future<void> run(
    ArgParser parser,
    List<String> arguments,
  ) async {
    try {
      await upgrade();
    } catch (e) {
      ProgressStar.stop(msg: 'Comet Error');
      print(e);
    }
  }
}
