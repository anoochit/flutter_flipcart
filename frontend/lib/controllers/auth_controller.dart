import 'dart:developer';

import 'package:frontend/services/api_service.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/user.dart';

class AuthController extends GetxController {
  RxBool _isSignIn = false.obs;
  RxList<String> userList = <String>[].obs;

  isSignIn() => _isSignIn.value;

  Future<User?> signIn({required String email, required String password}) async {
    User? user = await ApiService.signIn(email: email, password: password);

    if (user != null) {
      // save to share preference
      SharedPreferences preference = await SharedPreferences.getInstance();
      preference.setStringList('user', [user.jwt, user.user.id.toString(), user.user.username, user.user.email]);
      userList.value = [user.jwt, user.user.id.toString(), user.user.username, user.user.email];
      _isSignIn.value = true;
      update();
    }
    return user;
  }

  Future<User?> signUp({required String name, required String email, required String password}) async {
    User? user = await ApiService.signUp(name: name, email: email, password: password);

    if (user != null) {
      // save to share preference
      SharedPreferences preference = await SharedPreferences.getInstance();
      preference.setStringList('user', [user.jwt, user.user.id.toString(), user.user.username, user.user.email]);
      userList.value = [user.jwt, user.user.id.toString(), user.user.username, user.user.email];
      _isSignIn.value = true;
      update();
    }
    return user;
  }

  signOut() {
    _isSignIn.value = false;
    update();
  }
}
