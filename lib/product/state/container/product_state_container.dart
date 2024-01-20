// ignore_for_file: require_trailing_commas

import 'package:architecture_template_v2/core/src/hive/hive_cache_manager.dart';
import 'package:architecture_template_v2/product/cache/product_cache.dart';
import 'package:architecture_template_v2/product/services/manager/product_service_manager.dart';
import 'package:architecture_template_v2/product/state/view_model/product_view_model.dart';
import 'package:get_it/get_it.dart';

/// Product container for dependency injection
final class ProductContainer {
  const ProductContainer._();
  static final _getIt = GetIt.I;

  /// Product core required items
  static void setup() {
    _getIt
      ..registerSingleton(
          ProductCache(cacheManager: HiveCacheManager(path: '')))
      ..registerSingleton<ProductNetworkManager>(ProductNetworkManager.base())
      ..registerLazySingleton<ProductViewModel>(
        ProductViewModel.new,
      );
  }

  /// read your dependency item for [ProductContainer]
  static T read<T extends Object>() => _getIt<T>();
}
