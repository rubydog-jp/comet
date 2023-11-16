import 'dart:typed_data';

/// SrcData
class SrcData {
  const SrcData({
    required this.shelves,
  });
  final List<SrcShelf> shelves;
}

/// SrcShelf
class SrcShelf {
  const SrcShelf({
    required this.name,
    required this.books,
  });
  final String name;
  final List<SrcBook> books;
}

/// SrcBook
class SrcBook {
  const SrcBook({
    required this.name,
    required this.pages,
  });
  final String name;
  final List<SrcPage> pages;
}

/// SrcPage
class SrcPage {
  const SrcPage({
    required this.name,
    required this.content,
  });
  final String name;
  final Uint8List content;
}
