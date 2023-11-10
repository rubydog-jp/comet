import 'package:comet/src/logic/to_ui_shelf.dart';
import 'package:comet/src/types/ui.dart';
import 'package:comet/src/types/gen.dart';

UiData toUiData(CometGenData genData) {
  final uiShelves = genData.shelves.map((genShelf) {
    return toUiShelf(genShelf);
  }).toList();

  final siteIcon = genData.theme['site_icon'] ?? '';
  final sitetitle = genData.theme['site_title'] ?? '';
  final copyright = genData.theme['site_copyright'] ?? '';

  return UiData(
    siteIcon: siteIcon,
    siteTitle: sitetitle,
    copyright: copyright,
    shelves: uiShelves,
  );
}
