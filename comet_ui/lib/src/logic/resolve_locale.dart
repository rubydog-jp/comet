// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'package:comet/src/types/ui.dart';
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

/// 一番ユーザーのロケールに近い文字列のURLセグメントindexを選ぶ
String resolveLocale(UiData uiData) {
  final urlSegs = uiData.shelves.map((it) => it.urlSeg).toList();

  if (urlSegs.isEmpty) {
    throw Exception('Data Not Found');
  }

  String userLocale = '';
  if (kIsWeb) {
    userLocale = html.window.navigator.language;
  } else {
    userLocale = Intl.getCurrentLocale();
  }

  int bestMatchCount = 0;
  String bestMatchSeg = urlSegs.first;

  for (final urlSeg in urlSegs) {
    final matchCount = _matchCount(userLocale, urlSeg);
    if (matchCount > bestMatchCount) {
      bestMatchCount = matchCount;
      bestMatchSeg = urlSeg;
    }
  }

  return bestMatchSeg;
}

// 一致した文字の個数を返す
// 例: AXC , AYCZ => 2 (A,Cが一致)
int _matchCount(String strA, String strB) {
  final countA = strA.length;
  final countB = strB.length;
  final loopCount = (countA < countB) ? countA : countB;
  int matchingCount = 0;
  for (int i = 0; i < loopCount; i++) {
    if (strA[i] == strB[i]) {
      matchingCount++;
    }
  }
  return matchingCount;
}
