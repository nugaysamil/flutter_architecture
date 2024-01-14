// ignore_for_file: public_member_api_docs

import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseCubit<T extends Object> extends Cubit<T> {
  BaseCubit(super.state);

  @override
  void emit(T state) {
    if (isClosed) return;
    super.emit(state);
  }

  
}
