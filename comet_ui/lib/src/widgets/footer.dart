import 'package:flutter/material.dart';
import 'package:comet/src/types/ui.dart';
import 'package:comet/src/widgets/link_text.dart';
import 'package:comet/src/theme.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
    required this.data,
  });

  final UiData data;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CometTheme.colorNavy,
      alignment: Alignment.bottomCenter,
      child: Column(
        children: [
          const Spacer(),
          LinkText(
            'See Software License',
            style: const TextStyle(color: Colors.white),
            onTap: () {
              showLicensePage(context: context);
            },
          ),
          const SizedBox(height: 20),
          Text(
            data.copyright,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
