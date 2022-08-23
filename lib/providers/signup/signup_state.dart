import 'package:fb_auth_provider/models/custom_error.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_state.freezed.dart';

enum SignupStatus {
  initial,
  submitting,
  success,
  error,
}

@freezed
class SignupState with _$SignupState {
  factory SignupState({
    required SignupStatus signupStatus,
    required CustomError error,
  }) = _SignupState;

  factory SignupState.initial() => SignupState(
        signupStatus: SignupStatus.initial,
        error: CustomError(),
      );
}
