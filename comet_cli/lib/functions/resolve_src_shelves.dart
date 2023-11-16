import 'package:comet_cli/utils/read_sub_folder_names.dart';
import 'package:comet_cli/types/yaml.dart';

/// determin the src targets
Future<List<String>> resolveSrcShelves(CometYaml cometYaml) async {
  final folders = await readSubFolderNamesCurrent();
  // ignore FLUTTER project
  folders.removeWhere((it) => it == cometYaml.flutterProject.root);
  // ignore settings for ignore_folders
  folders.removeWhere((it) => cometYaml.ignoreFolders.contains(it));
  return folders;
}
