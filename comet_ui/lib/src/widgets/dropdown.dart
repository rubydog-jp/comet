import 'package:flutter/material.dart';
import 'package:comet/src/types/state.dart';
import 'package:comet/src/types/ui.dart';

class DropdownView extends StatelessWidget {
  const DropdownView({
    super.key,
    required this.state,
    required this.data,
    required this.onSelectShelf,
  });

  final UiState state;
  final UiData data;
  final void Function(UiShelf newValue) onSelectShelf;

  @override
  Widget build(BuildContext context) {
    final items = List.generate(
      data.shelves.length,
      (index) {
        final shelf = data.shelves[index];
        return DropdownMenuItem(
          value: shelf.urlSeg,
          child: Text(shelf.title),
        );
      },
    );

    return DropdownButton(
      value: state.selectedShelf.urlSeg,
      onChanged: (String? newValue) {
        final newShelf = data.shelves.firstWhere(
          (it) => it.urlSeg == newValue!,
        );
        onSelectShelf(newShelf);
      },
      items: [...items],
    );
  }
}
