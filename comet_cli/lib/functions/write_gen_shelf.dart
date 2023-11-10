import 'package:comet_cli/types/raw.dart';
import 'package:comet_cli/utils/write_file.dart';
import 'package:comet_cli/utils/write_folder.dart';
import 'package:comet_cli/functions/write_gen_book.dart';

Future<void> writeGenShelf(RawShelf rawShelf) async {
  // Folder
  writeFolder(rawShelf.folderPath);

  // File
  writeStringFile(
    rawShelf.filePath,
    rawShelf.fileContent,
  );

  // Books
  for (final rawBook in rawShelf.books) {
    await writeGenBook(rawBook);
  }
}
