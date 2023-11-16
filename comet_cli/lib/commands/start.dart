import 'dart:io';
import 'package:comet_cli/config.dart';
import 'package:comet_cli/functions/build_only_page.dart';
import 'package:comet_cli/functions/run_flutter_restart.dart';
import 'package:comet_cli/functions/watch_flutter_lib.dart';
import 'package:comet_cli/utils/progress_star.dart';
import 'package:comet_cli/functions/read_yaml.dart';
import 'package:comet_cli/functions/resolve_src_shelves.dart';
import 'package:comet_cli/functions/run_flutter_run.dart';
import 'package:comet_cli/functions/watch_src.dart';

/// process of start
Future<void> start() async {
  // Cometプロジェクトかどうか
  final cometYaml = readCometYaml();
  if (cometYaml == null) {
    print('Not found $cometYamlName');
    return;
  }

  ProgressStar.start('building..');

  await Process.run(
    'comet',
    [
      'build',
    ],
    runInShell: true,
  );

  ProgressStar.message('flutter run..');

  await runFlutterRun(
    cometYaml.flutterProject.root,
    (process) async {
      // on process started
      final shelfFolders = await resolveSrcShelves(cometYaml);
      watchSrc(
        shelfFolders,
        onEditFolder: (srcPath) async {
          await _runCometBuild();
          await runFlutterRestart(process);
        },
        onEditPage: (srcPath) async {
          await buildOnlyPage(srcPath, cometYaml);
          await runFlutterRestart(process);
        },
      );
      watchFlutterLib(
        cometYaml.flutterProject.root,
        onEdit: (srcPath) async {
          await runFlutterRestart(process);
        },
      );
    },
    () {
      // maybe app started
      ProgressStar.blink('watching .md..');
    },
  );

  // on app finished
  ProgressStar.stop();
  exit(0);
}

Future<void> _runCometBuild() async {
  await Process.run(
    'comet',
    [
      'build',
    ],
    runInShell: true,
  );
}
