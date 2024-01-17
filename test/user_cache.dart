import 'package:architecture_template_v2/core/src/cache/cache_model.dart';
import 'package:architecture_template_v2/core/src/cache/cache_model.dart';

class UserCache with CacheModel {
  UserCache({required this.id, required this.name});

  final String id;
  final String name;
  


  @override
  UserCache fromDynamicJson(dynamic json) {
    return UserCache(
      id: json['id'] as String,
      name: json['name'] as String,
    );
  }
  
  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
