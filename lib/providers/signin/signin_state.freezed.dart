// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'signin_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SigninState {
  SigninStatus get signinStatus => throw _privateConstructorUsedError;
  CustomError get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SigninStateCopyWith<SigninState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SigninStateCopyWith<$Res> {
  factory $SigninStateCopyWith(
          SigninState value, $Res Function(SigninState) then) =
      _$SigninStateCopyWithImpl<$Res>;
  $Res call({SigninStatus signinStatus, CustomError error});

  $CustomErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$SigninStateCopyWithImpl<$Res> implements $SigninStateCopyWith<$Res> {
  _$SigninStateCopyWithImpl(this._value, this._then);

  final SigninState _value;
  // ignore: unused_field
  final $Res Function(SigninState) _then;

  @override
  $Res call({
    Object? signinStatus = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      signinStatus: signinStatus == freezed
          ? _value.signinStatus
          : signinStatus // ignore: cast_nullable_to_non_nullable
              as SigninStatus,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as CustomError,
    ));
  }

  @override
  $CustomErrorCopyWith<$Res> get error {
    return $CustomErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
abstract class _$$_SigninStateCopyWith<$Res>
    implements $SigninStateCopyWith<$Res> {
  factory _$$_SigninStateCopyWith(
          _$_SigninState value, $Res Function(_$_SigninState) then) =
      __$$_SigninStateCopyWithImpl<$Res>;
  @override
  $Res call({SigninStatus signinStatus, CustomError error});

  @override
  $CustomErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$_SigninStateCopyWithImpl<$Res> extends _$SigninStateCopyWithImpl<$Res>
    implements _$$_SigninStateCopyWith<$Res> {
  __$$_SigninStateCopyWithImpl(
      _$_SigninState _value, $Res Function(_$_SigninState) _then)
      : super(_value, (v) => _then(v as _$_SigninState));

  @override
  _$_SigninState get _value => super._value as _$_SigninState;

  @override
  $Res call({
    Object? signinStatus = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_SigninState(
      signinStatus: signinStatus == freezed
          ? _value.signinStatus
          : signinStatus // ignore: cast_nullable_to_non_nullable
              as SigninStatus,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as CustomError,
    ));
  }
}

/// @nodoc

class _$_SigninState implements _SigninState {
  _$_SigninState({required this.signinStatus, required this.error});

  @override
  final SigninStatus signinStatus;
  @override
  final CustomError error;

  @override
  String toString() {
    return 'SigninState(signinStatus: $signinStatus, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SigninState &&
            const DeepCollectionEquality()
                .equals(other.signinStatus, signinStatus) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(signinStatus),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_SigninStateCopyWith<_$_SigninState> get copyWith =>
      __$$_SigninStateCopyWithImpl<_$_SigninState>(this, _$identity);
}

abstract class _SigninState implements SigninState {
  factory _SigninState(
      {required final SigninStatus signinStatus,
      required final CustomError error}) = _$_SigninState;

  @override
  SigninStatus get signinStatus;
  @override
  CustomError get error;
  @override
  @JsonKey(ignore: true)
  _$$_SigninStateCopyWith<_$_SigninState> get copyWith =>
      throw _privateConstructorUsedError;
}
