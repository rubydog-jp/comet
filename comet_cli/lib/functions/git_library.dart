import 'package:git/git.dart';
import 'package:path/path.dart' as path;

/// 自力で実装できるまで一時的に使うGitライブラリ
class GitLibrary {
  // 特定のフォルダの中身だけを別のブランチのルートフォルダにコミットする
  Future<void> commitToBranch({
    required String contentDirFullPath,
    required String branch,
    required String commitMsg,
  }) async {
    final gitDir = await GitDir.fromExisting(
      path.current,
      allowSubdirectory: true,
    );
    await gitDir.updateBranchWithDirectoryContents(
      branch,
      contentDirFullPath,
      commitMsg,
    );
  }
}
