import 'dart:convert';

import 'package:dio/dio.dart';

class APIHelper {
  static Future<String?> fetchUrl(Uri uri,
      {Map<String, String>? headers}) async {
    try {
      final dio = Dio();
      final response =
          await dio.get(uri.toString(), options: Options(headers: headers));

      String encodedData = json.encode(response.data).toString();
      if (response.statusCode == 200) {
        return encodedData;
      }
    } catch (e) {
      print(e.toString());
    }

    return null;
  }
}
