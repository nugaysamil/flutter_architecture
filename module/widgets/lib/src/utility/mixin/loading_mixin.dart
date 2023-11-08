import 'package:flutter/widgets.dart';

// Statefull widget mixin to hanlde loading state
mixin LoadingMixin<T extends StatefulWidget> on State<T> {
  final ValueNotifier<bool> _isLoadingNotifier = ValueNotifier<bool>(false);

  // ignore: public_member_api_docs
  bool get isLoading => _isLoadingNotifier.value;

  // ignore: public_member_api_docs
  void changeLoading({bool? isLoading}) {
    if (isLoading != null) _isLoadingNotifier.value = isLoading;

    _isLoadingNotifier.value = !_isLoadingNotifier.value;
  }
}
