import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pedikia/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  // String baseUrl = "https://testing.tanpabatasgroup.com/api";
  String baseUrl = "http://10.0.2.2:8000/api";

  Future<UserModel> register({
    String name,
    String phone,
    String address,
    String city,
    String roles,
    String email,
    String password,
  }) async {
    var url = '$baseUrl/register';

    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode({
      'name': name,
      'phone': phone,
      'address': address,
      'city': city,
      'roles': roles,
      'email': email,
      'password': password,
    });

    var response = await http.post(
      url,
      headers: headers,
      body: body,
    );

    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      UserModel user = UserModel.fromJson(data['user']);
      var token = user.token = 'Bearer ${data['access_token']}';

      final prefs = await SharedPreferences.getInstance();
      prefs.setString('email', email);
      prefs.setString('password', password);
      prefs.setString('token', token);

      return user;
    } else {
      throw Exception('Gagal Register');
    }
  }

  Future<UserModel> login({
    String email,
    String password,
  }) async {
    var url = '$baseUrl/login';

    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode({
      'email': email,
      'password': password,
    });

    var response = await http.post(
      url,
      headers: headers,
      body: body,
    );

    print(response.body);
    print(response.statusCode);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      UserModel user = UserModel.fromJson(data['user']);
      var token = user.token = 'Bearer ${data['access_token']}';

      final prefs = await SharedPreferences.getInstance();
      prefs.setString('email', email);
      prefs.setString('password', password);
      prefs.setString('token', token);
      return user;
    } else {
      throw Exception('Gagal Login');
    }
  }

  Future<UserModel> editProfile({
    String name,
    String username,
    String email,
    String token,
  }) async {
    var url = '$baseUrl/user';

    var headers = {
      'Content-Type': 'application/json',
      'Authorization': token,
    };
    var body = jsonEncode({
      'name': name,
      // 'username': username,
      'email': email,
    });

    var response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: body,
    );

    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      UserModel user = UserModel.fromJson(data);
      user.token = token;
      final prefs = await SharedPreferences.getInstance();
      prefs.setString('email', email);

      return user;
    } else {
      throw Exception('Gagal Update Profil');
    }
  }

  Future<bool> hasSavedToken() async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.containsKey("token");
  }

  Future<UserModel> getUser() async {
    var prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey("token")) {
      var token = prefs.getString("token");
      var response = await http.get(
        Uri.parse("$baseUrl/profile"),
        headers: {
          "Authorization": token,
        },
      );
      if (response.statusCode == 200) {
        try {
          var body = jsonDecode(response.body);
          UserModel user = UserModel.fromJson(body["data"]);
          return user;
        } catch (err) {
          return null;
        }
      } else {
        return null;
      }
    } else {
      return null;
    }
  }

  Future<bool> isFirstTimeUser() async {
    var prefs = await SharedPreferences.getInstance();
    return !prefs.containsKey("is_first");
  }

  Future<bool> validateToken(String token) async {
    var response = await http.get(
      Uri.parse("$baseUrl/profile"),
      headers: {
        "Authorization": token,
      },
    );
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> logout(String token) async {
    var url = Uri.parse('$baseUrl/logout');
    var headers = {
      'Content-Type': 'application/json',
      'Authorization': token,
    };

    var response = await http.post(
      url,
      headers: headers,
    );

    print(response.body);

    if (response.statusCode == 200) {
      final prefs = await SharedPreferences.getInstance();
      prefs.remove('email');
      prefs.remove('password');
      prefs.remove('token');

      return true;
    } else {
      throw Exception('Gagal Logout');
    }
  }

  // Future<bool> logoutUser() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   var token = prefs.getString("token").toString();
  //   var url = "$baseUrl/logout";
  //   var header = {
  //     'Content-Type': 'application/json',
  //     'Authorization': token,
  //   };
  //   var response = await http.post(
  //     Uri.parse(url),
  //     headers: header,
  //   );
  //   if (response.statusCode == 200) {
  //     await prefs.remove("token");
  //     return true;
  //   } else {
  //     throw Exception("Gagal Logout");
  //   }
  // }
}
