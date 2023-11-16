import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

CustomTransitionPage<T> noTransitionAnimatiobnPage<T>({
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    child: child,
    transitionsBuilder: (_, __, ___, child) {
      return child;
    },
    transitionDuration: Duration.zero,
  );
}
