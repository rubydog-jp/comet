import 'package:comet_cli/functions/code_name.dart';
import 'package:comet_cli/config.dart';
import 'package:comet_cli/types/src.dart';
import 'package:comet_cli/types/yaml.dart';

/// convert src data to dart code
String toDartData(SrcData srcData, CometYaml cometYaml) {
  final importBuf = StringBuffer();
  final shelvesBuf = StringBuffer();
  for (final shelf in srcData.shelves) {
    final shelfCodeName = toCodeName(shelf.name);
    importBuf.writeln("import '$genDataFolderName/$shelfCodeName.dart';");
    shelvesBuf.writeln("  $shelfCodeName,");
  }

  final content = """
// ignore_for_file: constant_identifier_names, file_names
import 'package:comet/comet.dart';
${importBuf.toString()}
const List<CometGenShelf> _shelves = [
${shelvesBuf.toString()}];

const Map<String, String?> _theme = {
  'site_icon': '${cometYaml.site.icon}',
  'site_title': '${cometYaml.site.title}',
  'site_copyright': '${cometYaml.site.copyright}',
};

const cometData = CometGenData(
  shelves: _shelves,
  theme: _theme,
);
""";
  return content;
}
