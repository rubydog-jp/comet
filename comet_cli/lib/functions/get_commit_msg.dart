String getCommitMsg() {
  final now = DateTime.now();
  final epoch = now.millisecondsSinceEpoch;
  final epochString = epoch.toString();
  return 'commit by Comet $epochString';
}
