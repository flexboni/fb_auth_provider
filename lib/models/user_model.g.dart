// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      profileImage: json['profileImage'] as String,
      point: json['point'] as int,
      rank: json['rank'] as String,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'profileImage': instance.profileImage,
      'point': instance.point,
      'rank': instance.rank,
    };
