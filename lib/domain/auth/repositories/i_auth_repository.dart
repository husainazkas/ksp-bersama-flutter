import 'package:dartz/dartz.dart';

import '../entities/user.dart';

abstract interface class IAuthRepository {
  Future<Option<User>> getUserData();
  Future<Option<Unit>> loginWithGoogle();
  Future<void> logout();
}
