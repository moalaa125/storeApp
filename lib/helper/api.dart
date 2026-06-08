import 'dart:convert';

import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> get({required String url}) async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('there is a problem ${response.statusCode}');
    }
  }

  Future<dynamic> post({required String url, dynamic body}) async {
    print('url = $url , body = $body');
    http.Response response = await http.post(Uri.parse(url), body: body);
    if (response.statusCode == 200 || response.statusCode == 201) {
      Map<String, dynamic> data = jsonDecode(response.body);
      print(data);
      return data;
    } else {
      throw Exception(
        'there is a problem ${response.statusCode} , ${response.body}',
      );
    }
  }

  Future<dynamic> put({required String url, dynamic body}) async {
    print('url = $url , body = $body');
    http.Response response = await http.put(Uri.parse(url), body: body);
    if (response.statusCode == 200 || response.statusCode == 201) {
      Map<String, dynamic> data = jsonDecode(response.body);
      print(data);
      return data;
    } else {
      throw Exception(
        'there is a problem ${response.statusCode} , ${response.body}',
      );
    }
  }
}
