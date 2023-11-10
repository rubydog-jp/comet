import 'package:args/args.dart';
import 'package:comet_cli/commands/doctor.dart';
import 'package:comet_cli/utils/progress_star.dart';

class DoctorRouter {
  Future<void> run(
    ArgParser parser,
    List<String> arguments,
  ) async {
    try {
      await callDoctor();
    } catch (e) {
      ProgressStar.stop(msg: 'Comet Error');
      print(e);
    }
  }
}
