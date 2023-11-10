import 'package:comet_cli/functions/read_src_shelf.dart';
import 'package:comet_cli/functions/resolve_src_shelves.dart';
import 'package:comet_cli/types/src.dart';
import 'package:comet_cli/types/yaml.dart';

Future<SrcData> readSrcData(CometYaml cometYaml) async {
  final folders = await resolveSrcShelves(cometYaml);
  final List<SrcShelf> shelves = [];
  for (final shelfFolder in folders) {
    final shelf = await readSrcShelf(cometYaml, shelfFolder);
    shelves.add(shelf);
  }
  return SrcData(shelves: shelves);
}
