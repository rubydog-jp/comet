import 'dart:io';
import 'package:comet_cli/functions/code_name.dart';
import 'package:comet_cli/config.dart';
import 'package:comet_cli/functions/to_raw_page.dart';
import 'package:comet_cli/types/yaml.dart';
import 'package:comet_cli/utils/delete_file.dart';
import 'package:comet_cli/functions/read_src_page.dart';
import 'package:comet_cli/functions/write_gen_page.dart';

/// .mdファイルが編集されたとき 全部ではなく関係するページだけを生成しなおす
///   - srcPagePath: 編集されたファイルのパス
Future<void> buildOnlyPage(
  String srcPagePath,
  CometYaml cometYaml,
) async {
  final srcPathSegments = srcPagePath.split(Platform.pathSeparator);
  final srcPageSegment = srcPathSegments.removeLast();
  final srcBookSegments = srcPathSegments;
  final genFileName = srcPageSegment;
  final genBookSegments = srcBookSegments.map(
    (it) => toCodeName(it),
  );
  final genBookPath = genBookSegments.join(Platform.pathSeparator);
  final genDataPath =
      '${cometYaml.flutterProject.root}/$genRoot/$genDataFolderName';
  final genBookFolderPath = '$genDataPath/$genBookPath';
  final genFilePath = '$genBookFolderPath$genFileName$dartExt';

  /// create raw-page
  final srcPage = await readSrcPageFullPath(srcPagePath);
  final rawPage = toRawPage(srcPage, genBookFolderPath);

  // delete old gen-page
  deleteFile(genFilePath);

  // write gen-data
  await writeGenPage(rawPage);
}
