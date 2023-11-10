import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LinkText extends StatelessWidget {
  const LinkText(
    this.text, {
    super.key,
    this.style,
    required this.onTap,
  });

  final String text;
  final TextStyle? style;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: text,
        style: style?.copyWith(
              decoration: TextDecoration.underline,
            ) ??
            const TextStyle(
              decoration: TextDecoration.underline,
            ),
        recognizer: TapGestureRecognizer()..onTap = onTap,
      ),
    );
  }
}
