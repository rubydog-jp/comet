import 'package:comet_cli/types/raw.dart';
import 'package:comet_cli/utils/write_file.dart';
import 'package:comet_cli/utils/write_folder.dart';
import 'package:comet_cli/functions/write_gen_shelf.dart';

Future<void> writeGenData(RawData rawData) async {
  // Folder
  writeFolder(rawData.folderPath);

  // File
  writeStringFile(
    rawData.filePath,
    rawData.fileContent,
  );

  // Books
  for (final shelf in rawData.shelves) {
    writeGenShelf(shelf);
  }
}
