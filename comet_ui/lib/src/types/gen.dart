class CometGenData {
  const CometGenData({
    required this.shelves,
    required this.theme,
  });
  final List<CometGenShelf> shelves;
  final Map<String, String?> theme;
}

class CometGenShelf {
  const CometGenShelf({
    required this.srcName,
    required this.books,
  });
  final String srcName;
  final List<CometGenBook> books;
}

class CometGenBook {
  const CometGenBook({
    required this.srcName,
    required this.pages,
  });
  final String srcName;
  final List<CometGenPage> pages;
}

class CometGenPage {
  const CometGenPage({
    required this.srcName,
    required this.content,
  });
  final String srcName;
  final String content;
}
