import 'package:flutter/material.dart';
import 'package:pedikia/models/user_model.dart';
import 'package:pedikia/services/auth_service.dart';

class AuthProvider with ChangeNotifier {
  UserModel _user;

  UserModel get user => _user;

  set user(UserModel user) {
    _user = user;
    notifyListeners();
  }

  Future<bool> register({
    String name,
    String phone,
    String address,
    String city,
    String roles,
    String email,
    String password,
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
    String email,
    String password,
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
    String name,
    String phone,
    String address,
    String city,
    String email,
    String token,
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
