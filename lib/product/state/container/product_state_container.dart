// ignore_for_file: public_member_api_docs, cascade_invocations

import 'package:architecture_template_v2/product/services/manager/index.dart';
import 'package:architecture_template_v2/product/state/view_model/product_view_model.dart';
import 'package:get_it/get_it.dart';

/// Product container for dependency injection

final class ProductContainer {
  const ProductContainer._();
  static final _getIt = GetIt.I;

  /// Product core required items
  static void setup() {
    _getIt
        .registerSingleton<ProductNetworkManager>(ProductNetworkManager.base());

    _getIt.registerLazySingleton<ProductViewModel>(
      ProductViewModel.new,
    );
  
  }
  

  static T read<T extends Object>() => _getIt<T>();
}
