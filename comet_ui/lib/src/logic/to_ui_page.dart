import 'package:comet/src/logic/to_src_name.dart';
import 'package:comet/src/types/gen.dart';
import 'package:comet/src/types/ui.dart';

UiPage toUiPage(CometGenPage genPage) {
  final srcName = toSrcName(genPage.srcName, true);
  return UiPage(
    urlSeg: srcName.urlSeg,
    title: srcName.title,
    content: genPage.content,
  );
}
