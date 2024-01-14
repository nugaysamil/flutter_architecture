// ignore_for_file: public_member_api_docs, unused_local_variable

import 'package:architecture_template_v2/feature/home/view/state/home_state.dart';
import 'package:architecture_template_v2/product/services/interface/auth_application.dart';
import 'package:architecture_template_v2/product/state/base/base_cubit.dart';

final class HomeViewModel extends BaseCubit<HomeState> {
  HomeViewModel({required AuthenticationOperation operationService})
      : _authenticationOperationService = operationService,
        super(
          const HomeState(isLoading: false),
        );

  final AuthenticationOperation _authenticationOperationService;
  void changeLoading() {
    emit(
      state.copyWith(
        isLoading: !state.isLoading,
      ),
    );
  }

  Future<void> fetchUsers() async {
    final response = await _authenticationOperationService.users();
    emit(state.copyWith(users: response));
  }
}
