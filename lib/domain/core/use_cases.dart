import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'failures.dart';

const _errorStatusCode = -1;

abstract base class UseCase<Type, Params> {
  const UseCase();

  Future<Either<Failure, Type>> call(Params params) async {
    try {
      final result = await processCall(params);
      return result;
    } on FirebaseAuthException catch (e) {
      return Left(Failure.firebaseException(message: e.toString()));
    } on Failure catch (e) {
      return Left(e);
    } catch (e) {
      return Left(Failure.unknown(
        message: 'code: $_errorStatusCode, message: $e',
      ));
    }
  }

  Future<Either<Failure, Type>> processCall(Params params);
}

abstract base class UseCaseSync<Type, Params> {
  const UseCaseSync();

  Future<Either<Failure, Type>> call(Params params) async {
    try {
      final result = await Future.sync(() => processCall(params));
      return result;
    } on FirebaseAuthException catch (e) {
      return Left(Failure.firebaseException(message: e.toString()));
    } on Failure catch (e) {
      return Left(e);
    } catch (e) {
      return Left(Failure.unknown(
        message: 'code: $_errorStatusCode, message: $e',
      ));
    }
  }

  Either<Failure, Type> processCall(Params params);
}
