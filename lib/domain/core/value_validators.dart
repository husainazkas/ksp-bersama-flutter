import 'dart:typed_data';

import 'package:dartz/dartz.dart';

import 'value_failures.dart';

Either<ValueFailure<String>, String> validateStringLength(
    String input, int expectedLength) {
  if (input.length == expectedLength) {
    return right(input);
  } else {
    return left(ValueFailure.unexpectedLength(
      failedValue: input,
      expectedLength: expectedLength,
    ));
  }
}

Either<ValueFailure<String>, String> validateMaxStringLength(
  String input,
  int maxLength,
) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.exceedingLength(
      failedValue: input,
      max: maxLength,
    ));
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.trim().isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateStringNumber(String input) {
  if (int.tryParse(input) == null) {
    return left(ValueFailure.invalidStringNumber(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<Uint8List>, Uint8List> validateUint8ListNotEmpty(
    Uint8List input) {
  if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateSingleLine(String input) {
  if (input.contains('\n')) {
    return left(ValueFailure.multiline(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateFullname(String input) {
  if (input.length < 3 || input.length > 50) {
    return left(ValueFailure.invalidFullname(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validatePhoneNumber(String input) {
  const phoneNumberRegex =
      r'(\+62 ((\d{3}([ -]\d{3,})([- ]\d{4,})?)|(\d+)))|(\(\d+\) \d+)|\d{3}( \d+)+|(\d+[ -]\d+)|\d+';
  if (RegExp(phoneNumberRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPhoneNumber(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  // Maybe not the most robust way of email validation but it's good enough
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  // You can also add some advanced password checks (uppercase/lowercase, at least 1 number, ...)
  if (input.length > 6) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePasswordConfirmation(
    String confirmationPassword, String password) {
  if (confirmationPassword == password) {
    return right(confirmationPassword);
  } else {
    return left(
        ValueFailure.notMatchPassword(failedValue: confirmationPassword));
  }
}
