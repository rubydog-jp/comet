import 'package:comet_cli/config.dart';
import 'package:comet_cli/functions/read_yaml.dart';

Future<void> callDoctor() async {
  final yaml = readCometYaml();
  if (yaml == null) {
    print('Not found $cometYamlName');
    return;
  }

  var problems = 0;

  /* check something here */

  if (problems == 0) {
    print('No Problems found');
  }
}
