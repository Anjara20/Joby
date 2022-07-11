import 'package:flutter/material.dart';

class Auth extends ChangeNotifier {
  bool isLoggedIn = false;
  bool get authenticated => isLoggedIn;
  // void login({Map creds}) {
  //   print(creds);
  //   isLoggedIn = true;
  //   notifyListeners();
  // }

  // void logout() {
  //   isLoggedIn = false;
  //   notifyListeners();
  // }
}
