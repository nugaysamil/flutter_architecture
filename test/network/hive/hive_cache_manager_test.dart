// ignore_for_file: unused_local_variable

import 'package:architecture_template_v2/core/src/cache/hive_cache_manager.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../user_cache.dart';

void main() {
  setUp(() async {
    final coreManager = HiveCacheManager(
      path: 'test/hive',
    );
    await coreManager.init(
      items: [
        UserCache(id: '1', name: 'jhon'),
      ],
    );
  });

  test('Add a data for database', () async {
  });
}
