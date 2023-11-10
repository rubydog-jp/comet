import 'package:comet_cli/utils/read_sub_folder_names.dart';
import 'package:comet_cli/functions/read_src_book.dart';
import 'package:comet_cli/types/src.dart';
import 'package:comet_cli/types/yaml.dart';

Future<SrcShelf> readSrcShelf(CometYaml cometYaml, String folderName) async {
  final bookFolders = await readSubFolderNames(folderName);

  final List<SrcBook> srcBooks = [];
  for (final bookFolder in bookFolders) {
    final srcBook = await readSrcBook(folderName, bookFolder);
    srcBooks.add(srcBook);
  }

  final srcShelf = SrcShelf(
    name: folderName,
    books: srcBooks,
  );
  return srcShelf;
}
