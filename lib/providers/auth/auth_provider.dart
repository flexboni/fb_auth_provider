import 'package:fb_auth_provider/providers/auth/auth_state.dart';
import 'package:fb_auth_provider/repositories/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart' as fbAuth;
import 'package:state_notifier/state_notifier.dart';

class AuthProvider extends StateNotifier<AuthState> with LocatorMixin {
  AuthProvider() : super(AuthState.unknown());

  @override
  void update(Locator watch) {
    if (state.user != null) {
      final user = watch<fbAuth.User?>();

      state = state.copyWith(
        user: user,
        authStatus: AuthStatus.authenticated,
      );
    } else {
      state = state.copyWith(authStatus: AuthStatus.unauthenticated);
    }

    print('authState: $state');

    super.update(watch);
  }

  void signout() async {
    await read<AuthRepository>().signout();
  }
}
