import 'package:comet_cli/types/raw.dart';
import 'package:comet_cli/utils/write_file.dart';

/// write gen files
Future<void> writeGenPage(RawPage rawPage) async {
  writeStringFile(
    rawPage.filePath,
    rawPage.fileContent,
  );
}
