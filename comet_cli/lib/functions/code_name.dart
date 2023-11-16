import 'dart:convert';
import 'package:base32/base32.dart';
import 'dart:typed_data';

const _prefix = 'dont_edit_';
const _escape = 'A';

/// convert to the code-name
String toCodeName(String str) {
  final bytes = utf8.encode(str);
  final typedBytes = Uint8List.fromList(bytes);
  final encoded = base32.encode(typedBytes);
  final lowerCase = encoded.toLowerCase();
  final prefixAdded = '$_prefix$lowerCase';
  final escaped = prefixAdded.replaceAll('=', _escape);
  return escaped;
}

/// convert from the code-name
String fromCodeName(String str) {
  final nonEscaped = str.replaceAll(_escape, '=');
  final prefixRemoved = nonEscaped.replaceFirst(_prefix, '');
  final encoded = prefixRemoved.toUpperCase();
  final bytes = base32.decode(encoded);
  final decoded = utf8.decode(bytes);
  return decoded;
}
