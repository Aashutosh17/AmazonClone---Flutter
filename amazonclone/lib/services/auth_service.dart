import 'package:amazonclone/constants/global_variables.dart';
import 'package:amazonclone/models/user.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AuthService {
  get onSucess => null;

  // a function to signing up the user

  void signUpUser({
    required BuildContext context,
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      User user = User(
          id: '',
          name: name,
          email: email,
          password: password,
          address: '',
          type: '',
          token: '');

      http.Response res = await http.post(
        Uri.parse('$uri/api/signup'),
        body: user.toJson(),
        headers: <String, String>{
          'content-Type': 'application/json; charset = UTF-8',
        },
      );
    } catch (e) {}
  }
}
