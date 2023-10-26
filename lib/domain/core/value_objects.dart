import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import 'common_abstraction.dart';
import 'failures.dart';
import 'value_failures.dart';
import 'value_validators.dart';

@immutable
abstract class ValueObject<T> implements IValidatable {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  /// Throws [FailureUnexpectedValueException] containing the [ValueFailure]
  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw FailureUnexpectedValueException(f), id);
  }

  T getOrElse(T dflt) {
    return value.getOrElse(() => dflt);
  }

  Either<ValueFailure<T>, Unit> get failureOrUnit {
    return value.fold(
      left,
      (r) => right(unit),
    );
  }

  @override
  bool isValid() => value.isRight();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}

class EmailAddress extends ValueObject<String> {
  const EmailAddress._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(
        validateStringNotEmpty(input).flatMap(validateEmailAddress));
  }
}

class Password extends ValueObject<String> {
  const Password._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(validateStringNotEmpty(input).flatMap(validatePassword));
  }

  factory Password.confirmation(String input, String truePassword) {
    return Password._(validateStringNotEmpty(input).flatMap(
        (password) => validatePasswordConfirmation(password, truePassword)));
  }
}

class FullName extends ValueObject<String> {
  const FullName._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;

  factory FullName(String input) {
    return FullName._(
      validateStringNotEmpty(input).flatMap(validateFullname),
    );
  }
}

class PhoneNumber extends ValueObject<String> {
  const PhoneNumber._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;

  factory PhoneNumber(String input, int maxLength) {
    return PhoneNumber._(
      validateStringNotEmpty(input)
          .flatMap(validatePhoneNumber)
          .flatMap((phone) => validateMaxStringLength(phone, maxLength)),
    );
  }
}

class OtpCode extends ValueObject<String> {
  const OtpCode._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;

  factory OtpCode(String input) {
    return OtpCode._(
        validateStringNotEmpty(input).flatMap(validateStringNumber));
  }

  factory OtpCode.withExpectedLength(String input, int expectedLength) {
    return OtpCode._(validateStringNotEmpty(input)
        .flatMap(validateStringNumber)
        .flatMap((otp) => validateStringLength(otp, expectedLength)));
  }
}

class FilledString extends ValueObject<String> {
  const FilledString._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;

  factory FilledString(String input) {
    return FilledString._(validateStringNotEmpty(input));
  }
}

class StringNumber extends ValueObject<String> {
  const StringNumber._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;

  factory StringNumber(String input) {
    return StringNumber._(
      validateStringNotEmpty(input).flatMap(validateStringNumber),
    );
  }
}

class StringSingleLine extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory StringSingleLine(String input) {
    return StringSingleLine._(
      validateSingleLine(input),
    );
  }

  const StringSingleLine._(this.value);
}
