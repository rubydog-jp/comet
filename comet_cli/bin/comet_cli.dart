import 'package:comet_cli/router/root.dart';

Future<void> main(List<String> arguments) async {
  final router = Router();
  await router.run(arguments);
}
