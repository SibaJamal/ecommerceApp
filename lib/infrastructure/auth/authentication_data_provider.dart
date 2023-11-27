import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../constants.dart';
import 'package:shared_preferences/shared_preferences.dart';


@singleton
class AuthenticationHelper {
  final Dio dio;
  late String _accessToken;

  AuthenticationHelper() : dio = Dio() {
    // dio.options.headers['Content-Type'] = 'application/json; charset=UTF-8';
  }

    // dio.options.headers['Accept'] = 'application/vnd.api+json';
    // dio.options.headers['Content-Type'] = 'application/vnd.api+json';
    // dio.options.headers['Authorization'] =
    //     'Bearer 84|WN9EerCNNA7uBtV1wG66vgFdEZqBG6spHyUr8yTM';

  Future<void> signUp(
      { required String name,
        required String email,
        required String password,
        required String confirmPassword,
      }) async {
    try {
      final response = await dio.post(
        "$url/auth/register",
        data: {
          'name': name,
          'email': email,
          'password': password,
          'password_repeat': confirmPassword,
        },
        options: Options(
          headers: {
            'Content-type': 'application/json; charset=UTF-8',
          },
        ),
      );

      Map<String, dynamic> responseData = json.decode(response.toString());
      var token = responseData['data']['access_token'];
      saveTokens(token);
      print(token);
    } on DioError catch (e) {
      if (e.response != null) {
        if (e.response!.statusCode == 422) {
          print("Unprocessable Entity: ${e.response!.data}");
        } else {
          print("Dio Error: ${e.response!.statusCode} mmm  ${e.response!.data} ");
        }
      } else {
        print("Network Error: $e");
      }
    }
  }


  Future<void> signIn(String email, String password) async {
    try {
      var formData = FormData.fromMap({
        'email': email,
        'password': password,
      });
      final response = await dio.post(
        "$url/auth/login",
        data: formData,
      );
      if (response.statusCode == 200) {
        var data = response.data;
        // String token = data['data']['token'];
        // storeToken(token);

        print('OKOKOKOKKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOK');
        // print(token);
        print('OKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOK');
      }
    } catch (e) {
      print("************");
      print(e);
      print("************");
    }
  }

  Future getUser() async {
    await loadTokens();
    if (_accessToken == null) {
      // Handle the case where the user is not authenticated.
      return;
    }

    try {
      final response = await dio.get('https://api.storerestapi.com/user/profile', options: Options(
        headers: {
          'Authorization': 'Bearer $_accessToken',
        },
      ));

      // Parse the user data from the response.
      final userData = response.data;
      print('User data: $userData');
    } catch (e) {
      print('Error: $e');
      // Handle any errors, such as token expiration, and possibly refresh the token.
    }
  }

  Future<void> signOut() async {
    try {
      // getToken();

      // dio.options.headers['Authorization'] = 'Bearer $tokenValue';
      final response = await dio.post(
        '$url/logout',
      );
      if (response.statusCode == 200) {}
    } catch (e) {
      print("************");
      print(e);
      print("************");
    }
  }
  Future<void> saveTokens(String accessToken) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('access_token', accessToken);
    _accessToken = accessToken;
  }

  Future<void> loadTokens() async {
    final prefs = await SharedPreferences.getInstance();
    _accessToken = prefs.getString('access_token')!;
  }



}



// class AuthService {
//   final Dio _dio = Dio();
//   String _accessToken;
//
//   Future<void> saveTokens(String accessToken) async {
//     final prefs = await SharedPreferences.getInstance();
//     await prefs.setString('access_token', accessToken);
//     _accessToken = accessToken;
//   }
//
//   Future<void> loadTokens() async {
//     final prefs = await SharedPreferences.getInstance();
//     _accessToken = prefs.getString('access_token')!;
//   }
//
//   Future<void> loginUser() async {
//     await loadTokens();
//     if (_accessToken == null) {
//       // Handle the case where the user is not authenticated.
//       return;
//     }
//
//     try {
//       final response = await _dio.get('https://api.storerestapi.com/user/profile', options: Options(
//         headers: {
//           'Authorization': 'Bearer $_accessToken',
//         },
//       ));
//
//       // Parse the user data from the response.
//       final userData = response.data;
//       print('User data: $userData');
//     } catch (e) {
//       print('Error: $e');
//       // Handle any errors, such as token expiration, and possibly refresh the token.
//     }
//   }
// }

