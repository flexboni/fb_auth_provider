import 'package:cloud_firestore/cloud_firestore.dart';
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

  factory User.fromDoc(DocumentSnapshot userDoc) {
    final userData = userDoc.data() as Map<String, dynamic>?;

    return User(
      id: userDoc.id,
      name: userData!['name'],
      email: userData['email'],
      profileImage: userData['profileImage'],
      point: userData['point'],
      rank: userData['rank'],
    );
  }
}
