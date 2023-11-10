import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>> downloadJson(String urlString) async {
  const timeout = Duration(seconds: 5);
  final url = Uri.parse(urlString);
  final res = await http.get(url).timeout(timeout);
  final json = jsonDecode(res.body);
  return json;
}
