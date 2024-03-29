// ignore_for_file: public_member_api_docs

import 'package:architecture_template_v2/product/services/manager/index.dart';
import 'package:architecture_template_v2/product/services/manager/product_service_manager.dart';
import 'package:architecture_template_v2/product/state/container/product_state_items.dart';
import 'package:architecture_template_v2/product/state/view_model/product_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T> {
  ProductNetworkManager get productNetworkManager =>
      ProductStateItems.productNetworkManager;

  ProductViewModel get productViewModel => context.read<ProductViewModel>();
}
