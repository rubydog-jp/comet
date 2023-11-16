/// RawData
class RawData {
  const RawData({
    required this.shelves,
    required this.fileContent,
    required this.folderPath,
    required this.filePath,
  });
  final List<RawShelf> shelves;
  final String fileContent;
  final String folderPath;
  final String filePath;
}

/// RawShelf
class RawShelf {
  const RawShelf({
    required this.books,
    required this.fileContent,
    required this.folderPath,
    required this.filePath,
  });
  final List<RawBook> books;
  final String fileContent;
  final String folderPath;
  final String filePath;
}

/// RawBook
class RawBook {
  const RawBook({
    required this.pages,
    required this.fileContent,
    required this.folderPath,
    required this.filePath,
  });
  final List<RawPage> pages;
  final String fileContent;
  final String folderPath;
  final String filePath;
}

/// RawPage
class RawPage {
  const RawPage({
    required this.fileContent,
    required this.filePath,
  });
  final String fileContent;
  final String filePath;
}
