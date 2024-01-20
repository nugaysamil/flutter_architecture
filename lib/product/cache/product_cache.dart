// ignore_for_file: public_member_api_docs, unused_field

import 'package:architecture_template_v2/core/src/cache/cache_manager.dart';
import 'package:architecture_template_v2/core/src/hive/hive_cache_operaton.dart';
import 'package:architecture_template_v2/product/cache/model/user_cache_model.dart';

class ProductCache {
  ProductCache({required CacheManager cacheManager})
      : _cacheManager = cacheManager;

  final CacheManager _cacheManager;

  /// Initialize cache manager
  Future<void> init() async {
    await _cacheManager.init(
      items: [
        UserCacheModel.empty(),
      ],
    );
  }

  late final HiveCacheOperation<UserCacheModel> userCacheOperation =
      HiveCacheOperation<UserCacheModel>();
}
