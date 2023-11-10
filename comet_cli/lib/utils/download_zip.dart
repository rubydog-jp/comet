import 'package:http/http.dart' as http;

Future<List<int>> downloadZip(String urlString) async {
  final url = Uri.parse(urlString);
  final response = await http.get(url);

  if (response.statusCode == 200) {
    final bytes = response.bodyBytes;
    return bytes;
  }

  throw Exception('ERROR: HTTP status ${response.statusCode}');
}
