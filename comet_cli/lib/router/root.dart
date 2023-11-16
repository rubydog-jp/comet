import 'package:args/args.dart';
import 'package:comet_cli/router/build.dart';
import 'package:comet_cli/router/clean.dart';
import 'package:comet_cli/router/create.dart';
import 'package:comet_cli/router/deploy.dart';
import 'package:comet_cli/router/doctor.dart';
import 'package:comet_cli/router/start.dart';
import 'package:comet_cli/commands/help.dart';
import 'package:comet_cli/commands/version.dart';
import 'package:comet_cli/router/upgrade.dart';

class Router {
  Future<void> run(List<String> arguments) async {
    final parser = ArgParser();
    // --help, -h を登録
    parser.addFlag('help', abbr: 'h');
    // --version, -v を登録
    parser.addFlag('version', abbr: 'v');

    // サブコマンド deploy を登録
    final deployParser = parser.addCommand('deploy');
    // deploy に --no-push を登録
    deployParser.addFlag('no-push', help: 'disable auto deploy');

    // サブコマンド create を登録
    final createParser = parser.addCommand('create');

    // サブコマンド doctor を登録
    final doctorParser = parser.addCommand('doctor');

    // サブコマンド start を登録
    final startParser = parser.addCommand('start');

    // サブコマンド build を登録
    final buildParser = parser.addCommand('build');

    // サブコマンド clean を登録
    final cleanParser = parser.addCommand('clean');

    // サブコマンド upgrade を登録
    final upgradeParser = parser.addCommand('upgrade');

    /* START PARSE */

    final argsMap = parser.parse(arguments);

    final withHelp = argsMap['help'] as bool;
    if (withHelp) {
      await showHelp();
      return;
    }
    final withVersion = argsMap['version'] as bool;
    if (withVersion) {
      await showVersion();
      return;
    }

    final subCommand = argsMap.command;
    if (subCommand == null) {
      // サブコマンドがなければここで終了
      return;
    }

    switch (subCommand.name) {
      case 'deploy':
        final router = DeployRouter();
        await router.run(deployParser, subCommand.arguments);
        break;
      case 'create':
        final router = CreateRouter();
        await router.run(createParser, subCommand.arguments);
        break;
      case 'doctor':
        final router = DoctorRouter();
        await router.run(doctorParser, subCommand.arguments);
        break;
      case 'start':
        final router = StartRouter();
        await router.run(startParser, subCommand.arguments);
        break;
      case 'build':
        final router = BuildRouter();
        await router.run(buildParser, subCommand.arguments);
        break;
      case 'clean':
        final router = CleanRouter();
        await router.run(cleanParser, subCommand.arguments);
        break;
      case 'upgrade':
        final router = UpgradeRouter();
        await router.run(upgradeParser, subCommand.arguments);
        break;
      default:
        break;
    }
  }
}
