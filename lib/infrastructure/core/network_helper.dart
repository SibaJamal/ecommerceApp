// i will use this for both products and search

import 'package:dio/dio.dart';

class NetworkHelper {
  String url;
  final Dio dio;
  NetworkHelper(this.url) : dio = Dio() {
    // dio.options.headers['Accept'] = 'application/vnd.api+json';
    // dio.options.headers['Content-Type'] = 'application/vnd.api+json';
  }

  Future fetchData() async {
    try {
      final response = await dio.get(url);
      if (response.statusCode == 200) {
        print("&&&&&&&&&&&&&&&&&&&&&&7");
        var data = response.data;
        print(
            "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        print(response);
        print(
            "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        return data;
      }
    } catch (e) {
      print("************");
      print(e);
      print("************");
    }
  }
}
