import 'package:hive_flutter/hive_flutter.dart';

import '../../core/db_hive.dart';

abstract interface class IAuthLocalDatasource {
  Future<void> saveGoogleIdToken(String idToken);
  Future<void> saveGoogleAccessToken(String accessToken);
  Future<String?> getGoogleIdToken();
  Future<String?> getGoogleAccessToken();
}

class AuthLocalDatasource implements IAuthLocalDatasource {
  static const String _googleIdTokenKey = 'google_id_token';
  static const String _googleAccessTokenKey = 'google_access_token';

  @override
  Future<String?> getGoogleIdToken() async {
    final idToken =
        await Hive.lazyBox(DbHive.authBox).get(_googleIdTokenKey) as String?;
    return idToken;
  }

  @override
  Future<String?> getGoogleAccessToken() async {
    final accessToken = await Hive.lazyBox(DbHive.authBox)
        .get(_googleAccessTokenKey) as String?;
    return accessToken;
  }

  @override
  Future<void> saveGoogleIdToken(String idToken) {
    return Hive.lazyBox(DbHive.authBox).put(_googleIdTokenKey, idToken);
  }

  @override
  Future<void> saveGoogleAccessToken(String accessToken) {
    return Hive.lazyBox(DbHive.authBox).put(_googleAccessTokenKey, accessToken);
  }
}
