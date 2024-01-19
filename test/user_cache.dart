// ignore_for_file: avoid_dynamic_calls, annotate_overrides

import 'package:architecture_template_v2/core/src/cache/cache_model.dart';

class UserCache with CacheModel {
  UserCache({required this.id, required this.name});
  UserCache.empty() : this(id: '', name: '');

  @override
  final String id;
  final String name;

  @override
  UserCache fromDynamicJson(dynamic json) {
    final itemMap = json as Map<String, dynamic>;
    return UserCache(
      id: itemMap['id'] as String,
      name: itemMap['name'] as String,
    );
  }
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}
