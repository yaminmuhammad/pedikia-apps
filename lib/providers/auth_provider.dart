import 'package:flutter/material.dart';
import 'package:pedikia_id/models/user_model.dart';
import 'package:pedikia_id/services/auth_service.dart';

class AuthProvider with ChangeNotifier {
  late UserModel _user;

  UserModel get user => _user;

  set user(UserModel user) {
    _user = user;
    notifyListeners();
  }

  Future<bool> register({
    required String name,
    required String phone,
    required String address,
    required String city,
    required String roles,
    required String email,
    required String password,
  }) async {
    try {
      UserModel user = await AuthService().register(
        name: name,
        phone: phone,
        address: address,
        city: city,
        roles: roles,
        email: email,
        password: password,
      );

      _user = user;
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> login({
    required String email,
    required String password,
  }) async {
    try {
      UserModel user = await AuthService().login(
        email: email,
        password: password,
      );

      _user = user;
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> editProfile({
    required String name,
    required String phone,
    required String address,
    required String city,
    required String email,
    required String token,
  }) async {
    try {
      UserModel user = await AuthService().editProfile(
        name: name,
        // username: username,
        phone: phone,
        address: address,
        city: city,
        email: email,
        token: token,
      );

      _user = user;

      return true;
    } catch (e) {
      print(e);

      return false;
    }
  }

  var result = true;
  Future<bool> logout(String token) async {
    try {
      if (await AuthService().logout(token)) {
        result = true;
      }

      return result;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
