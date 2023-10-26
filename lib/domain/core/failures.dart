import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'value_failures.dart';

part 'failures.freezed.dart';

@freezed
class Failure with _$Failure {
  const Failure._();

  String get message => when(
        firebaseException: id,
        unexpectedValueException: (v) => v.toString(),
        serverException: id,
        unauthorized: id,
        forbidden: id,
        sessionEnded: id,
        serviceNotAvailable: id,
        invalidArgs: id,
        invalidValue: id,
        unknown: id,
      );

  @Implements<Exception>()
  const factory Failure.firebaseException({required String message}) =
      FailureFirebaseException;

  @Implements<Exception>()
  const factory Failure.unexpectedValueException(ValueFailure valueFailure) =
      FailureUnexpectedValueException;

  @Implements<Exception>()
  const factory Failure.serverException({required String message}) =
      FailureServerException;

  @Implements<Exception>()
  const factory Failure.unauthorized({required String message}) =
      FailureUnauthorized;

  @Implements<Exception>()
  const factory Failure.forbidden({required String message}) = FailureForbidden;

  @Implements<Exception>()
  const factory Failure.sessionEnded({required String message}) =
      FailureSessionEnded;

  @Implements<Exception>()
  const factory Failure.serviceNotAvailable({required String message}) =
      FailureServiceNotAvailable;

  @Implements<Exception>()
  const factory Failure.invalidArgs({required String message}) =
      FailureInvalidArgs;

  @Implements<Exception>()
  const factory Failure.invalidValue({required String message}) =
      FailureInvalidValue;

  @Implements<Exception>()
  const factory Failure.unknown({required String message}) = FailureUnknown;
}
