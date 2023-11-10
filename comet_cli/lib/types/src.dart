import 'dart:typed_data';

class SrcData {
  const SrcData({
    required this.shelves,
  });
  final List<SrcShelf> shelves;
}

class SrcShelf {
  const SrcShelf({
    required this.name,
    required this.books,
  });
  final String name;
  final List<SrcBook> books;
}

class SrcBook {
  const SrcBook({
    required this.name,
    required this.pages,
  });
  final String name;
  final List<SrcPage> pages;
}

class SrcPage {
  const SrcPage({
    required this.name,
    required this.content,
  });
  final String name;
  final Uint8List content;
}
