import 'package:comet_cli/config.dart';
import 'package:comet_cli/functions/to_dart_data.dart';
import 'package:comet_cli/functions/to_raw_shelf.dart';
import 'package:comet_cli/types/raw.dart';
import 'package:comet_cli/types/src.dart';
import 'package:comet_cli/types/yaml.dart';

// Src --> Raw
RawData toRawData(SrcData srcData, CometYaml cometYaml) {
  final folderPath =
      '${cometYaml.flutterProject.root}/$genRoot/$genDataFolderName';
  final filePath = '$folderPath$dartExt';

  final List<RawShelf> rawShelves = [];
  for (final srcShelf in srcData.shelves) {
    final rawShelf = toRawShelf(
      srcShelf,
      folderPath,
      cometYaml,
    );
    rawShelves.add(rawShelf);
  }

  final dart = toDartData(srcData, cometYaml);
  return RawData(
    shelves: rawShelves,
    fileContent: dart,
    folderPath: folderPath,
    filePath: filePath,
  );
}
