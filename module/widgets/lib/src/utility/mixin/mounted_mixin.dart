// ignore_for_file: public_member_api_docs

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

// Stateful widget mixin to hanlde loading state
mixin MountedMixin<T extends StatefulWidget> on State<T> {
  // manage your mounted state
  Future<void> safeOperation(AsyncCallback callback) async {
    if (!mounted) return;
    await callback.call();
  }
}
