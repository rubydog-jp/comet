import 'package:args/args.dart';
import 'package:comet_cli/commands/build.dart';
import 'package:comet_cli/utils/progress_star.dart';

class BuildRouter {
  Future<void> run(
    ArgParser parser,
    List<String> arguments,
  ) async {
    try {
      await build();
    } catch (e) {
      ProgressStar.stop(msg: 'Comet Error');
      print(e);
    }
  }
}
