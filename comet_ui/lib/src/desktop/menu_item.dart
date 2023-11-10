import 'package:flutter/material.dart';
import 'package:comet/src/types/ui.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({
    super.key,
    required this.page,
    required this.isSelected,
    required this.onTap,
  });

  final UiPage page;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isSelected ? Colors.grey.withOpacity(0.2) : null,
      child: ListTile(
        title: Text(page.title),
        onTap: onTap,
      ),
    );
  }
}
