import 'package:firebase_auth/firebase_auth.dart' as fbAuth;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

enum AuthStatus {
  unknown,
  authenticated,
  unauthenticated,
}

@freezed
class AuthState with _$AuthState {
  factory AuthState({
    required AuthStatus authStatus,
    fbAuth.User? user,
  }) = _AuthState;

  factory AuthState.unknown() => AuthState(authStatus: AuthStatus.unknown);
}
