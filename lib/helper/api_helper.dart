import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

class APIHelper {
  static final dio = Dio();

  static Future<String?> fetchUrl(Uri uri,
      {Map<String, String>? headers}) async {
    try {
      final response = await http.get(uri, headers: headers);
      if (response.statusCode == 200) {
        return response.body;
      }
    } catch (e) {
      print(e.toString());
    }

    return null;
  }
}
