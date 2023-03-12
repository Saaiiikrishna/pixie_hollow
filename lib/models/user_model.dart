import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  UserModel._();

  factory UserModel({
    required String id,
    required String? name,
    String? email,
    String? defaultAddress,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  bool get hasAddress => defaultAddress?.isNotEmpty ?? false;
}
