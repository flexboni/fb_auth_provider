// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomError _$$_CustomErrorFromJson(Map<String, dynamic> json) =>
    _$_CustomError(
      code: json['code'] as String? ?? '',
      message: json['message'] as String? ?? '',
      plugin: json['plugin'] as String? ?? '',
    );

Map<String, dynamic> _$$_CustomErrorToJson(_$_CustomError instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'plugin': instance.plugin,
    };
