import 'package:flutter/material.dart';
import 'package:comet/src/mobile/drawer_header.dart';
import 'package:comet/src/types/state.dart';
import 'package:comet/src/types/ui.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({
    super.key,
    required this.data,
    required this.onSelectShelf,
    required this.state,
    required this.onSelectBookAndPage,
  });

  final UiData data;
  final UiState state;
  final void Function(UiShelf newValue) onSelectShelf;
  final void Function(UiBook newBook, UiPage newPage) onSelectBookAndPage;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          MenuDrawerHeader(
            data: data,
            state: state,
            onSelectShelf: onSelectShelf,
          ),
          ...List.generate(
            state.selectedShelf.books.length,
            (bookIdx) {
              final book = state.selectedShelf.books[bookIdx];
              final bookIsSelected = state.selectedBook?.urlSeg == book.urlSeg;
              final items = List.generate(
                book.pages.length,
                (pageIdx) {
                  final page = book.pages[pageIdx];
                  final pageIsSelected =
                      state.selectedPage?.urlSeg == page.urlSeg;
                  final isSelected = bookIsSelected && pageIsSelected;
                  return ListTile(
                    tileColor: isSelected ? Colors.grey[300] : null,
                    contentPadding: const EdgeInsets.only(left: 40),
                    title: Text(
                      page.title,
                      style: const TextStyle(fontSize: 14),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      onSelectBookAndPage(book, page);
                    },
                  );
                },
              );

              return Container(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: ExpansionTile(
                  initiallyExpanded: bookIsSelected,
                  textColor: bookIsSelected ? Colors.blue : Colors.black,
                  collapsedTextColor:
                      bookIsSelected ? Colors.blue : Colors.black,
                  title: Text(
                    book.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  children: items,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
