import 'package:fb_auth_provider/providers/auth/auth_state.dart';
import 'package:fb_auth_provider/repositories/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart' as fbAuth;
import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier {
  final AuthRepository authRepository;

  AuthState _state = AuthState.unknown();

  AuthState get state => _state;

  AuthProvider({
    required this.authRepository,
  });

  void update(fbAuth.User? user) {
    if (user != null) {
      _state = _state.copyWith(
        user: user,
        authStatus: AuthStatus.authenticated,
      );
    } else {
      _state = _state.copyWith(authStatus: AuthStatus.unauthenticated);
    }

    print('authState: $_state');
    notifyListeners();
  }

  void signout() async {
    await authRepository.signout();
  }
}
