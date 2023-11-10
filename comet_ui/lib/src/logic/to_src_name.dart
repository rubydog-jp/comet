import 'package:comet/src/types/src_name.dart';

/// ファイル名やフォルダ名を解析する
/// [ソートタグ].[タイトル].[URLセグメント] が基本形式
SrcName toSrcName(String srcNameString, bool isFile) {
  late final String sortTag;
  late final String title;
  late final String urlSeg;

  // "." の数に応じて場合分け
  const separator = '.';
  final segments = srcNameString.split(separator);
  if (isFile) {
    // ファイルのときは拡張子を取り除く
    segments.removeLast();
  }

  if (segments.isEmpty) {
    throw Exception('format is incorrect $srcNameString');
  }

  if (segments.length == 1) {
    // [タイトル] の形式

    // タグは適当に設定
    sortTag = '0';
    title = segments.first;
    // タイトルをエンコードしてURLとみなす。大文字は小文字へ。
    urlSeg = Uri.encodeFull(title.toLowerCase());
  } else if (segments.length == 2) {
    // [ソートタグ].[タイトル] の形式
    sortTag = segments.first;
    title = segments.last;

    // タイトルをエンコードしてURLとみなす。大文字は小文字へ。
    urlSeg = Uri.encodeFull(title.toLowerCase());
  } else {
    // [ソートタグ].[タ.イ.ト.ル].[URLセグメント] の形式
    sortTag = segments.first;
    urlSeg = Uri.encodeFull(segments.last);
    segments.removeLast();
    segments.removeAt(0);
    title = segments.join(separator);
  }

  return SrcName(
    sortTag: sortTag,
    title: title,
    urlSeg: urlSeg,
  );
}
