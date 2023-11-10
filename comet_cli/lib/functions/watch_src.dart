import 'dart:async';
import 'dart:io';
import 'package:watcher/watcher.dart';

List<StreamSubscription<WatchEvent>> watchSrc(
  List<String> folders, {
  required void Function(String srcPath) onEditPage,
  required void Function(String srcPath) onEditFolder,
}) {
  // mdファイルの変更を監視
  final List<StreamSubscription<WatchEvent>> subsList = [];
  const watcherDelay = Duration(seconds: 1);
  for (final folder in folders) {
    final watcher = DirectoryWatcher(
      folder,
      pollingDelay: watcherDelay,
    );
    final subs = watcher.events.listen((change) async {
      // 編集されたはページかどうか
      final srcPath = change.path;
      final entityType = FileSystemEntity.typeSync(srcPath);
      switch (entityType) {
        case FileSystemEntityType.directory:
          // フォルダのとき
          // ブックまでの階層かどうか
          final depth = srcPath.split(Platform.pathSeparator).length;
          if (depth <= 3) {
            // shelf/book/
            onEditFolder(srcPath);
          }
          break;
        case FileSystemEntityType.file:
          // ファイルのとき
          // ページの階層かどうか
          final depth = srcPath.split(Platform.pathSeparator).length;
          if (depth == 3) {
            // shelf/book/page.md
            onEditPage(srcPath);
          }
          break;
        default:
          break;
      }
    });
    subsList.add(subs);
  }
  return subsList;
}
