import 'package:comet_cli/config.dart';
import 'package:comet_cli/utils/crean_folder.dart';
import 'package:comet_cli/functions/to_raw_data.dart';
import 'package:comet_cli/functions/read_src_data.dart';
import 'package:comet_cli/functions/read_yaml.dart';
import 'package:comet_cli/utils/progress_star.dart';
import 'package:comet_cli/functions/write_gen_data.dart';

/// process of build
Future<void> build() async {
  // Cometプロジェクトかどうか
  final cometYaml = readCometYaml();
  if (cometYaml == null) {
    print('Not found $cometYamlName');
    return;
  }

  // read src-data
  ProgressStar.start('read yaml..');
  final srcData = await readSrcData(cometYaml);

  // create raw-data
  final rawData = toRawData(srcData, cometYaml);

  // delete old gen-data
  ProgressStar.message('gen dart files..');
  cleanFolder('${cometYaml.flutterProject.root}/$genRoot');

  // write gen-dat
  await writeGenData(rawData);
  ProgressStar.stop();
}
