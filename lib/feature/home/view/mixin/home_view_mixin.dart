import 'package:architecture_template_v2/feature/home/home_view.dart';
import 'package:architecture_template_v2/product/services/manager/product_network_error.dart';
import 'package:architecture_template_v2/product/services/manager/product_service_manager.dart';
import 'package:flutter/material.dart';

// Manage your home view business

mixin HomeViewMixin on State<HomeView> {
  late final ProductNetworkManager productNetworkManager;
  late final ProductNetworkErrorManager productNetworErrorManager;

  @override
  void initState() {
    super.initState();
    productNetworkManager = ProductNetworkManager.base();
    productNetworErrorManager = ProductNetworkErrorManager(context);

    productNetworkManager.listenErrorState(
      onErrorStatus: productNetworErrorManager.handleError,
    );
  }
}
