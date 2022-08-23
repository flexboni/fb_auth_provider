import 'package:fb_auth_provider/models/custom_error.dart';
import 'package:fb_auth_provider/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.freezed.dart';

enum ProfileStatus {
  initial,
  loading,
  loaded,
  error,
}

@freezed
class ProfileState with _$ProfileState {
  factory ProfileState({
    required ProfileStatus profileStatus,
    required User user,
    required CustomError error,
  }) = _ProfileState;

  factory ProfileState.initial() => ProfileState(
        profileStatus: ProfileStatus.initial,
        user: User.initialUser(),
        error: CustomError(),
      );
}
