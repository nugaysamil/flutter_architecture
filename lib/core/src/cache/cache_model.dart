// ignore_for_file: public_member_api_docs

mixin CacheModel {
  String get id;

  CacheModel fromDynamicJson(dynamic json);
  Map<String, dynamic> toJson();
}
