// ignore_for_file: public_member_api_docs

import 'package:architecture_template_v2/core/src/cache/cache_model.dart';

abstract class CacheManager {
  CacheManager({required this.path});
  Future<void> init({required List<CacheModel> items});
  void remove();

  final String path;
}
