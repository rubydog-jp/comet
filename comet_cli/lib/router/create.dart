import 'package:args/args.dart';
import 'package:comet_cli/commands/create.dart';
import 'package:comet_cli/utils/progress_star.dart';

class CreateRouter {
  Future<void> run(
    ArgParser parser,
    List<String> arguments,
  ) async {
    try {
      final projectName = arguments.first;
      await create(projectName);
    } catch (e) {
      ProgressStar.stop(msg: 'Comet Error');
      print(e);
    }
  }
}
