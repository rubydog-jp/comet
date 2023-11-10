import 'package:comet_cli/config.dart';
import 'package:comet_cli/utils/read_sub_file_names.dart';
import 'package:comet_cli/functions/read_src_page.dart';
import 'package:comet_cli/types/src.dart';

Future<SrcBook> readSrcBook(String folderPath, String folderName) async {
  final path = '$folderPath/$folderName';

  final pageFiles = await readSubFileNames(path);
  final List<SrcPage> pages = [];
  for (final pageFile in pageFiles) {
    // ignore non-md file
    final fileIsMd = pageFile.endsWith(mdExt);
    if (!fileIsMd) continue;
    final page = await readSrcPage(path, pageFile);
    pages.add(page);
  }
  final book = SrcBook(
    name: folderName,
    pages: pages,
  );
  return book;
}
