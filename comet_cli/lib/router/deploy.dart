import 'package:args/args.dart';
import 'package:comet_cli/commands/deploy.dart';
import 'package:comet_cli/utils/progress_star.dart';

/// parser for deploy
class DeployRouter {
  Future<void> run(
    ArgParser parser,
    List<String> arguments,
  ) async {
    try {
      final deployArgsMap = parser.parse(arguments);
      final showHelp = deployArgsMap['help'] as bool;
      if (showHelp) {
        print('deploy --help is now under development');
        return;
      }

      final noPush = deployArgsMap['no-push'] as bool;

      await deploy(noPush: noPush);
    } catch (e) {
      ProgressStar.stop(msg: 'Comet Error');
      print(e);
    }
  }
}
