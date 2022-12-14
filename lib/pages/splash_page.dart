import 'package:fb_auth_provider/pages/home_page.dart';
import 'package:fb_auth_provider/pages/signin_page.dart';
import 'package:fb_auth_provider/providers/auth/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    final authState = context.watch<AuthState>();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (authState.authStatus == AuthStatus.authenticated) {
        Navigator.pushNamed(context, HomePage.routeName);
      } else if (authState.authStatus == AuthStatus.unauthenticated) {
        Navigator.pushNamed(context, SigninPage.routeName);
      }
    });

    return const Scaffold(
        body: Center(
      child: CircularProgressIndicator(),
    ));
  }
}
