import 'package:flutter/material.dart';
import 'package:comet/src/types/ui.dart';

class TabItem extends StatelessWidget {
  const TabItem({
    super.key,
    required this.book,
    required this.isSelected,
    required this.onTap,
  });

  final UiBook book;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: ConstrainedBox(
        constraints: const BoxConstraints(minWidth: 50),
        child: Container(
          alignment: Alignment.center,
          child: Text(
            book.title,
            style: TextStyle(
              fontWeight: isSelected ? FontWeight.bold : null,
              color: isSelected ? Colors.indigo : null,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
