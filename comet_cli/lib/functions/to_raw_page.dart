import 'package:comet_cli/functions/code_name.dart';
import 'package:comet_cli/config.dart';
import 'package:comet_cli/functions/to_dart_page.dart';
import 'package:comet_cli/types/raw.dart';
import 'package:comet_cli/types/src.dart';

/// Src --> Raw
RawPage toRawPage(SrcPage srcPage, String bookFolderPath) {
  final codeName = toCodeName(srcPage.name);
  final filePath = '$bookFolderPath/$codeName$dartExt';

  final dart = toDartPage(srcPage);
  final rawPage = RawPage(
    fileContent: dart,
    filePath: filePath,
  );
  return rawPage;
}
