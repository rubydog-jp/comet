/// X.Y.Z 形式のバージョンを比較する
/// _compareVersions(A, B)
/// [A=-1] [B=1] として大きい方を返す
/// <return>
///   -1: Aの方が大きい
///    0: 等しい
///   +1: Bの方が大きい
int compareVersions(String verA, String verB) {
  final partsA = verA.split('.').map(int.parse).toList();
  final partsB = verB.split('.').map(int.parse).toList();

  // Compare each part of the version
  for (int i = 0; i < partsA.length; i++) {
    final a = partsA[i];
    final b = partsB[i];
    if (a < b) {
      return 1;
    } else if (a > b) {
      return -1;
    }
  }

  return 0;
}
