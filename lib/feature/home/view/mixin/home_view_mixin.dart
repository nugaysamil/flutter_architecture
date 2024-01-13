import 'package:architecture_template_v2/feature/home/home_view.dart';
import 'package:architecture_template_v2/product/services/login_service.dart';
import 'package:architecture_template_v2/product/services/manager/product_network_error.dart';
import 'package:architecture_template_v2/product/state/container/product_state_items.dart';
import 'package:flutter/material.dart';

// Manage your home view business

mixin HomeViewMixin on State<HomeView> {
  late final LoginService loginService;
  late final ProductNetworkErrorManager productNetworErrorManager;

  @override
  void initState() {
    super.initState();
    loginService = LoginService(ProductStateItems.productNetworkManager);
    productNetworErrorManager = ProductNetworkErrorManager(context);

    ProductStateItems.productNetworkManager.listenErrorState(
      onErrorStatus: productNetworErrorManager.handleError,
    );
  }
}
