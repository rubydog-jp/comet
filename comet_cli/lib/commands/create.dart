import 'package:comet_cli/config.dart';
import 'package:comet_cli/functions/compare_versions.dart';
import 'package:comet_cli/functions/read_remote_config.dart';
import 'package:comet_cli/functions/read_yaml.dart';
import 'package:comet_cli/functions/run_flutter_pub_get.dart';
import 'package:comet_cli/utils/download_zip.dart';
import 'package:comet_cli/utils/progress_star.dart';
import 'package:comet_cli/utils/unzip.dart';

Future<void> create(String projectName) async {
  ProgressStar.start('download template..');
  late final List<int> template;
  try {
    final remoteConfig = await readRemoteConfig();
    final remoteVersion = compareVersions(version, remoteConfig.minCliVer);
    if (remoteVersion > 0) {
      // 最小バージョン要件を満たしていない
      ProgressStar.stop(msg: 'You need upgrade comet_cli.');
      print('');
      print('    \$ comet upgrade');
      print('');
      return;
    }
    template = await downloadZip(remoteConfig.templateSite);
  } catch (err) {
    ProgressStar.stop(msg: 'Failed to download files');
    return;
  }

  ProgressStar.message('unzip template..');
  await unzip(template, projectName);

  final cometYaml = readCometYaml(path: '$projectName/');
  if (cometYaml == null) {
    ProgressStar.stop(msg: 'Not Found comet.yaml');
    return;
  }

  ProgressStar.message('flutter pub get..');
  await runFlutterPubGet('$projectName/${cometYaml.flutterProject.root}');

  ProgressStar.stop();

  print('');
  print('    \$ cd $projectName');
  print('    \$ comet start');
  print('');
}
