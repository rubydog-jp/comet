import 'package:args/args.dart';
import 'package:comet_cli/commands/clean.dart';
import 'package:comet_cli/utils/progress_star.dart';

/// parser for clean
class CleanRouter {
  Future<void> run(
    ArgParser parser,
    List<String> arguments,
  ) async {
    try {
      await clean();
    } catch (e) {
      ProgressStar.stop(msg: 'Comet Error');
      print(e);
    }
  }
}
