import 'package:fb_auth_provider/models/custom_error.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signin_state.freezed.dart';

enum SigninStatus {
  initial,
  submitting,
  success,
  error,
}

@freezed
class SigninState with _$SigninState {
  factory SigninState({
    required SigninStatus signinStatus,
    required CustomError error,
  }) = _SigninState;

  factory SigninState.initial() => SigninState(
        signinStatus: SigninStatus.initial,
        error: CustomError(),
      );
}
