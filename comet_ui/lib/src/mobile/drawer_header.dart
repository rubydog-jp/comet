import 'package:flutter/material.dart';
import 'package:comet/src/types/state.dart';
import 'package:comet/src/types/ui.dart';
import 'package:comet/src/widgets/dropdown.dart';

class MenuDrawerHeader extends StatelessWidget {
  const MenuDrawerHeader({
    super.key,
    required this.data,
    required this.state,
    required this.onSelectShelf,
  });

  final UiData data;
  final UiState state;
  final void Function(UiShelf newValue) onSelectShelf;

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 40,
              child: Row(
                children: [
                  const Spacer(),
                  Image.asset('assets/images/${data.siteIcon}'),
                  const SizedBox(width: 10),
                  Text(
                    data.siteTitle,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
            DropdownView(
              state: state,
              data: data,
              onSelectShelf: onSelectShelf,
            ),
          ],
        ),
      ),
    );
  }
}
