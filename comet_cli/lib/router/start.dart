import 'dart:async';
import 'package:args/args.dart';
import 'package:comet_cli/commands/start.dart';
import 'package:comet_cli/utils/progress_star.dart';

class StartRouter {
  Future<void> run(
    ArgParser parser,
    List<String> arguments,
  ) async {
    try {
      await start();
    } catch (e) {
      ProgressStar.stop(msg: 'Comet Error');
      print(e);
    }
  }
}
