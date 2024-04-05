// authentication_provider.dart
import 'package:flutter/material.dart';

class AuthenticationProvider with ChangeNotifier {
  bool _isAuthenticated = false;

  bool get isAuthenticated => _isAuthenticated;

  void login() {
    // Perform authentication logic
    _isAuthenticated = true;
    notifyListeners();
  }

  void logout() {
    // Perform logout logic
    _isAuthenticated = false;
    notifyListeners();
  }
}
