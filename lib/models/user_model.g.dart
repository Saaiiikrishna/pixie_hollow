// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      id: json['id'] as String,
      email: json['email'] as String?,
      fullName: json['fullName'] as String?,
      defaultAddress: json['defaultAddress'] as String?,
      mobile: json['mobile'] as String?,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'fullName': instance.fullName,
      'defaultAddress': instance.defaultAddress,
      'mobile': instance.mobile,
    };
