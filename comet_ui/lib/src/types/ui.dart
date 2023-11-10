class UiData {
  const UiData({
    required this.shelves,
    required this.siteIcon,
    required this.siteTitle,
    required this.copyright,
  });

  final String siteIcon;
  final String siteTitle;
  final String copyright;
  final List<UiShelf> shelves;
}

class UiShelf {
  const UiShelf({
    required this.title,
    required this.urlSeg,
    required this.books,
  });
  final String urlSeg;
  final String title;
  final List<UiBook> books;
}

class UiBook {
  const UiBook({
    required this.title,
    required this.urlSeg,
    required this.pages,
  });
  final String urlSeg;
  final String title;
  final List<UiPage> pages;
}

class UiPage {
  const UiPage({
    required this.title,
    required this.urlSeg,
    required this.content,
  });
  final String urlSeg;
  final String title;
  final String content;
}
