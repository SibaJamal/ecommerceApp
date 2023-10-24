import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../constants.dart';


@singleton
class AuthenticationHelper {
  final Dio dio;
  String? tokenValue;

  AuthenticationHelper() : dio = Dio() {
    // dio.options.headers['Accept'] = 'application/vnd.api+json';
    // dio.options.headers['Content-Type'] = 'application/vnd.api+json';
    // dio.options.headers['Authorization'] =
    //     'Bearer 84|WN9EerCNNA7uBtV1wG66vgFdEZqBG6spHyUr8yTM';
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
        String token = data['data']['token'];
        // storeToken(token);

        print('OKOKOKOKKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOK');
        print(token);
        print('OKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOK');
      }
    } catch (e) {
      print("************");
      print(e);
      print("************");
    }
  }

  Future getUser() async {
    try {
      // // getToken();
      // dio.options.headers['Authorization'] = 'Bearer $tokenValue';
      // print('88888888888888888888888888888888888888888888888888811');
      // print(tokenValue);
      print('88888888888888888888888888888888888888888888888888811');
      // Response response = await dio.get(
      //   '$url/user',
      //   options: Options(
      //     headers: {
      //       'Authorization': 'Bearer $tokenValue',
      //     },
      //   ),
      // );
      final response = await dio.get(
        '$url/user',
      );
      print('888888888888888888888888888888888888888888888888888');

      if (response.statusCode == 200) {
        var data = response.data;
        return data;
      }
    } catch (e) {
      print("************45");
      print(e.toString());
      print("************44");
    }
  }

  Future<void> signUp(
      {required String email,
      required String password,
      required String confirmPassword,
      required String name}) async {
    var formData = FormData.fromMap({
      'name': name,
      'email': email,
      'password': password,
      'password_confirmation': confirmPassword
    });

    try {
      var response = await dio.post(
        '$url/auth/register',
        data: formData,
      );
      if (response.statusCode == 200) {
        print(
            'SIBASIBASIBASIBASIBASIBASIBASIBASIBASIBASIBASIBASIBASIBASIBASIBASIBASIBASIBASIBASIBA');
        // var data = response.data;
        // String token = data['data']['token'];
        // storeToken(token);
      }
      print(response);
      print(response.statusCode);
    } catch (e) {
      print(e);
    }
  }

  Future<void> signOut() async {
    try {
      // getToken();

      dio.options.headers['Authorization'] = 'Bearer $tokenValue';
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

  Future getUserPosts() async {
    try {
      // print(tokenValue);
      // getToken();
      // print('good');
      // print(tokenValue);
      // print('good');

      // dio.options.headers['Authorization'] = 'Bearer $tokenValue';
      final response = await dio.get(
        '$url/myposts',
      );
      if (response.statusCode == 200) {
        print("************");
        print("************");
      }
    } catch (e) {
      print("************");
      print(e);
      print("************");
    }
  }

  Future getUserCart() async {
    try {
      // print(tokenValue);
      // getToken();
      // print('good');
      // print(tokenValue);
      // print('good');

      // dio.options.headers['Authorization'] = 'Bearer $tokenValue';
      final response = await dio.get(
        '$url/cart',
      );
      if (response.statusCode == 200) {
        print("************");
        print("************");
      }
    } catch (e) {
      print("************");
      print(e);
      print("************");
    }
  }

  // void tryToken(
  //   String? token,
  // ) async {
  //   if (token == null) {
  //     return;
  //   } else {
  //     try {
  //       dio.options.headers['Authorization'] = 'Bearer $token';
  //       Response response = await dio.get('$url/user');
  //       User user = User.fromJson(response.data);
  //       _token = token;
  //       // _isLoggedIn = true;
  //       // storeToken(token: token);
  //       // notifyListeners();
  //       print(user);
  //     } catch (e) {
  //       print(e);
  //     }
  //   }
  // }

  // Future<void> storeToken(value) async {
  //   print('PPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPP');
  //   print(value);
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   await prefs.setString('token', value);
  //   print('PPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPP');
  // }

  // void getToken() async {
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   tokenValue = prefs.getString('token');
  //   print('NNMNNNNNNNNNNNNNNNNNNNNNNNNNNMMMMMMMMMMMMMMMMMMMMMMMMMMMMM');
  //   print(tokenValue);
  //   print('NNMNNNNNNNNNNNNNNNNNNNNNNNNNNMMMMMMMMMMMMMMMMMMMMMMMMMMMMM');
  // }
}
