import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class User with _$User {
  factory User({
    required String id,
    required String name,
    required String email,
    required String profileImage,
    required int point,
    required String rank,
  }) = _UserModel;

  factory User.initialUser() =>
      User(id: '', name: '', email: '', profileImage: '', point: -1, rank: '');

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
