import 'dart:io';
import 'package:watcher/watcher.dart';

/// watch FLUTTER/lib/..
void watchFlutterLib(
  String flutterProject, {
  required void Function(String path) onEdit,
}) {
  const watcherDelay = Duration(seconds: 1);
  final watcher = DirectoryWatcher(
    '$flutterProject${Platform.pathSeparator}lib',
    pollingDelay: watcherDelay,
  );
  watcher.events.listen((change) async {
    if (change.type == ChangeType.MODIFY) {
      onEdit(change.path);
    }
  });
}
