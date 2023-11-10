import 'package:flutter/material.dart';
import 'package:comet/src/types/state.dart';
import 'package:comet/src/widgets/dropdown.dart';
import 'package:comet/src/types/ui.dart';
import 'package:comet/src/desktop/tab_item.dart';
import 'package:comet/src/theme.dart';

// 公開していないが名前被りのため Comet をつける
class CometTabBar extends StatelessWidget {
  const CometTabBar({
    super.key,
    required this.data,
    required this.state,
    required this.onSelectBook,
    required this.onSelectShelf,
  });

  final UiData data;
  final UiState state;
  final void Function(UiBook newValue) onSelectBook;
  final void Function(UiShelf newValue) onSelectShelf;

  @override
  Widget build(BuildContext context) {
    final items = List.generate(
      state.selectedShelf.books.length,
      (index) {
        final book = state.selectedShelf.books[index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: TabItem(
            book: book,
            isSelected: state.selectedBook.urlSeg == book.urlSeg,
            onTap: () => onSelectBook(book),
          ),
        );
      },
    );

    return Container(
      color: Colors.white,
      height: CometTheme.tabbarHeight,
      child: Row(
        children: [
          const SizedBox(width: 10),
          SizedBox(
            width: 40,
            height: 40,
            child: Image.asset('assets/images/${data.siteIcon}'),
          ),
          const SizedBox(width: 10),
          Text(
            data.siteTitle,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(width: 10),
          ...items,
          const Spacer(),
          if (data.shelves.length >= 2)
            DropdownView(
              state: state,
              data: data,
              onSelectShelf: (newValue) {
                onSelectShelf(newValue);
              },
            ),
          if (data.shelves.length >= 2) const SizedBox(width: 10),
        ],
      ),
    );
  }
}
