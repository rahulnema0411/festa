import 'dart:convert';

import 'package:dio/dio.dart';

/// A utility class for making HTTP requests using Dio.
class APIHelper {
  /// Fetches data from the specified URL using a GET request.
  ///
  /// - [uri]: The URI to fetch data from.
  /// - [headers]: Optional headers to include in the HTTP request.
  /// Returns a Future<String?> representing the fetched data or null if an error occurs.
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
