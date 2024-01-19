// ignore_for_file: public_member_api_docs

import 'package:architecture_template_v2/core/src/cache/cache_model.dart';

abstract class CacheOperation<T extends CacheModel> {
  void add(T model);
  void addAll(List<T> models);

  void remove(String id);
  void clear();

  List<T> getAll();
  T? get(String id);
}
