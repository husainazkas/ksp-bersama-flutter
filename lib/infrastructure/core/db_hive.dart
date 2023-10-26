import 'package:hive_flutter/hive_flutter.dart';

abstract final class DbHive {
  static const String authBox = 'auth_box';

  static Future<void> init() async {
    await Hive.initFlutter();

    await Hive.openLazyBox(authBox);
  }
}
