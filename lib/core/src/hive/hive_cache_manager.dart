import 'package:architecture_template_v2/core/src/cache/cache_manager.dart';
import 'package:architecture_template_v2/core/src/cache/cache_model.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

/// The HiveCacheManager class is an implementation of the CacheManager class.
final class HiveCacheManager extends CacheManager {
  /// [path] is the path to the directory
  ///  where the Hive database files are stored.
  HiveCacheManager({required super.path});

  @override
  Future<void> init({required List<CacheModel> items}) async {
    final documentPath =
        path ?? (await getApplicationDocumentsDirectory()).path;
    Hive.defaultDirectory = documentPath;

    for (final item in items) {
      Hive.registerAdapter('${item.runtimeType}', item.fromDynamicJson);
    }
  }

  @override
  void remove() {
    Hive.deleteAllBoxesFromDisk();
  }
}
