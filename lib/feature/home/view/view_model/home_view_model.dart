// ignore_for_file: public_member_api_docs, unused_local_variable

import 'package:architecture_template_v2/feature/home/view/state/home_state.dart';
import 'package:architecture_template_v2/product/cache/model/user_cache_model.dart';
import 'package:architecture_template_v2/product/services/interface/auth_application.dart';
import 'package:architecture_template_v2/product/state/base/base_cubit.dart';
import 'package:architecture_template_v2/product/state/container/index.dart';
import 'package:gen/gen.dart';

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
    print(users);
    final response = await _authenticationOperationService.users();
    saveItems(response);
    emit(state.copyWith(users: response));
  }

  void saveItems(List<User> user) {
    for (final element in user) {
      ProductStateItems.productCache.userCacheOperation
          .add(UserCacheModel(user: element));
    }
  }

  List<User> get users => ProductStateItems.productCache.userCacheOperation
      .getAll()
      .map((e) => e.user)
      .toList();
}
