import 'package:comet_cli/types/raw.dart';
import 'package:comet_cli/utils/write_file.dart';
import 'package:comet_cli/utils/write_folder.dart';
import 'package:comet_cli/functions/write_gen_page.dart';

Future<void> writeGenBook(RawBook rawBook) async {
  // Folder
  writeFolder(rawBook.folderPath);

  // File
  writeStringFile(
    rawBook.filePath,
    rawBook.fileContent,
  );

  // Pages
  for (final page in rawBook.pages) {
    await writeGenPage(page);
  }
}
