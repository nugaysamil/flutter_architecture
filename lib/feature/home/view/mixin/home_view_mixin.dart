// ignore_for_file: public_member_api_docs

import 'package:architecture_template_v2/feature/home/home_view.dart';
import 'package:architecture_template_v2/feature/home/view/view_model/home_view_model.dart';
import 'package:architecture_template_v2/product/services/login_service.dart';
import 'package:architecture_template_v2/product/services/manager/product_network_error.dart';
import 'package:architecture_template_v2/product/state/base/base_state.dart';
import 'package:architecture_template_v2/product/state/container/product_state_items.dart';

// Manage your home view business

mixin HomeViewMixin on BaseState<HomeView> {
  late final ProductNetworkErrorManager _productNetworkErrorManager;
  late final HomeViewModel _homeViewModel;

  HomeViewModel get homeViewModel => _homeViewModel;

  @override
  void initState() {
    super.initState();
    _productNetworkErrorManager = ProductNetworkErrorManager(context);

    ProductStateItems.productNetworkManager.listenErrorState(
      onErrorStatus: _productNetworkErrorManager.handleError,
    );
    _homeViewModel = HomeViewModel(
      operationService: LoginService(productNetworkManager),
    );
  }
}
