// ignore_for_file: public_member_api_docs, type_annotate_public_apis, flutter_style_todos

import 'package:architecture_template_v2/core/src/cache/cache_model.dart';
import 'package:gen/gen.dart';

final class UserCacheModel with CacheModel {
  UserCacheModel({required this.user});
  UserCacheModel.empty() : user = User();

  final User user;

  @override
  UserCacheModel fromDynamicJson(json) {
    final jsonMap = json as Map<String, dynamic>;
    return copyWith(
      user: User.fromJson(jsonMap),
    );
  }

  @override
  String get id => user.id.toString();

  @override
  Map<String, dynamic> toJson() {
    return user.toJson();
  }

  UserCacheModel copyWith({
    User? user,
  }) {
    return UserCacheModel(
      user: user ?? this.user,
    );
  }
}
