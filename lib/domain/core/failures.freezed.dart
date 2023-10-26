// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) firebaseException,
    required TResult Function(ValueFailure<dynamic> valueFailure)
        unexpectedValueException,
    required TResult Function(String message) serverException,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) forbidden,
    required TResult Function(String message) sessionEnded,
    required TResult Function(String message) serviceNotAvailable,
    required TResult Function(String message) invalidArgs,
    required TResult Function(String message) invalidValue,
    required TResult Function(String message) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? firebaseException,
    TResult? Function(ValueFailure<dynamic> valueFailure)?
        unexpectedValueException,
    TResult? Function(String message)? serverException,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? forbidden,
    TResult? Function(String message)? sessionEnded,
    TResult? Function(String message)? serviceNotAvailable,
    TResult? Function(String message)? invalidArgs,
    TResult? Function(String message)? invalidValue,
    TResult? Function(String message)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? firebaseException,
    TResult Function(ValueFailure<dynamic> valueFailure)?
        unexpectedValueException,
    TResult Function(String message)? serverException,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? forbidden,
    TResult Function(String message)? sessionEnded,
    TResult Function(String message)? serviceNotAvailable,
    TResult Function(String message)? invalidArgs,
    TResult Function(String message)? invalidValue,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailureFirebaseException value) firebaseException,
    required TResult Function(FailureUnexpectedValueException value)
        unexpectedValueException,
    required TResult Function(FailureServerException value) serverException,
    required TResult Function(FailureUnauthorized value) unauthorized,
    required TResult Function(FailureForbidden value) forbidden,
    required TResult Function(FailureSessionEnded value) sessionEnded,
    required TResult Function(FailureServiceNotAvailable value)
        serviceNotAvailable,
    required TResult Function(FailureInvalidArgs value) invalidArgs,
    required TResult Function(FailureInvalidValue value) invalidValue,
    required TResult Function(FailureUnknown value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FailureFirebaseException value)? firebaseException,
    TResult? Function(FailureUnexpectedValueException value)?
        unexpectedValueException,
    TResult? Function(FailureServerException value)? serverException,
    TResult? Function(FailureUnauthorized value)? unauthorized,
    TResult? Function(FailureForbidden value)? forbidden,
    TResult? Function(FailureSessionEnded value)? sessionEnded,
    TResult? Function(FailureServiceNotAvailable value)? serviceNotAvailable,
    TResult? Function(FailureInvalidArgs value)? invalidArgs,
    TResult? Function(FailureInvalidValue value)? invalidValue,
    TResult? Function(FailureUnknown value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailureFirebaseException value)? firebaseException,
    TResult Function(FailureUnexpectedValueException value)?
        unexpectedValueException,
    TResult Function(FailureServerException value)? serverException,
    TResult Function(FailureUnauthorized value)? unauthorized,
    TResult Function(FailureForbidden value)? forbidden,
    TResult Function(FailureSessionEnded value)? sessionEnded,
    TResult Function(FailureServiceNotAvailable value)? serviceNotAvailable,
    TResult Function(FailureInvalidArgs value)? invalidArgs,
    TResult Function(FailureInvalidValue value)? invalidValue,
    TResult Function(FailureUnknown value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FailureFirebaseExceptionImplCopyWith<$Res> {
  factory _$$FailureFirebaseExceptionImplCopyWith(
          _$FailureFirebaseExceptionImpl value,
          $Res Function(_$FailureFirebaseExceptionImpl) then) =
      __$$FailureFirebaseExceptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailureFirebaseExceptionImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FailureFirebaseExceptionImpl>
    implements _$$FailureFirebaseExceptionImplCopyWith<$Res> {
  __$$FailureFirebaseExceptionImplCopyWithImpl(
      _$FailureFirebaseExceptionImpl _value,
      $Res Function(_$FailureFirebaseExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailureFirebaseExceptionImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureFirebaseExceptionImpl extends FailureFirebaseException {
  const _$FailureFirebaseExceptionImpl({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.firebaseException(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureFirebaseExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureFirebaseExceptionImplCopyWith<_$FailureFirebaseExceptionImpl>
      get copyWith => __$$FailureFirebaseExceptionImplCopyWithImpl<
          _$FailureFirebaseExceptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) firebaseException,
    required TResult Function(ValueFailure<dynamic> valueFailure)
        unexpectedValueException,
    required TResult Function(String message) serverException,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) forbidden,
    required TResult Function(String message) sessionEnded,
    required TResult Function(String message) serviceNotAvailable,
    required TResult Function(String message) invalidArgs,
    required TResult Function(String message) invalidValue,
    required TResult Function(String message) unknown,
  }) {
    return firebaseException(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? firebaseException,
    TResult? Function(ValueFailure<dynamic> valueFailure)?
        unexpectedValueException,
    TResult? Function(String message)? serverException,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? forbidden,
    TResult? Function(String message)? sessionEnded,
    TResult? Function(String message)? serviceNotAvailable,
    TResult? Function(String message)? invalidArgs,
    TResult? Function(String message)? invalidValue,
    TResult? Function(String message)? unknown,
  }) {
    return firebaseException?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? firebaseException,
    TResult Function(ValueFailure<dynamic> valueFailure)?
        unexpectedValueException,
    TResult Function(String message)? serverException,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? forbidden,
    TResult Function(String message)? sessionEnded,
    TResult Function(String message)? serviceNotAvailable,
    TResult Function(String message)? invalidArgs,
    TResult Function(String message)? invalidValue,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (firebaseException != null) {
      return firebaseException(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailureFirebaseException value) firebaseException,
    required TResult Function(FailureUnexpectedValueException value)
        unexpectedValueException,
    required TResult Function(FailureServerException value) serverException,
    required TResult Function(FailureUnauthorized value) unauthorized,
    required TResult Function(FailureForbidden value) forbidden,
    required TResult Function(FailureSessionEnded value) sessionEnded,
    required TResult Function(FailureServiceNotAvailable value)
        serviceNotAvailable,
    required TResult Function(FailureInvalidArgs value) invalidArgs,
    required TResult Function(FailureInvalidValue value) invalidValue,
    required TResult Function(FailureUnknown value) unknown,
  }) {
    return firebaseException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FailureFirebaseException value)? firebaseException,
    TResult? Function(FailureUnexpectedValueException value)?
        unexpectedValueException,
    TResult? Function(FailureServerException value)? serverException,
    TResult? Function(FailureUnauthorized value)? unauthorized,
    TResult? Function(FailureForbidden value)? forbidden,
    TResult? Function(FailureSessionEnded value)? sessionEnded,
    TResult? Function(FailureServiceNotAvailable value)? serviceNotAvailable,
    TResult? Function(FailureInvalidArgs value)? invalidArgs,
    TResult? Function(FailureInvalidValue value)? invalidValue,
    TResult? Function(FailureUnknown value)? unknown,
  }) {
    return firebaseException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailureFirebaseException value)? firebaseException,
    TResult Function(FailureUnexpectedValueException value)?
        unexpectedValueException,
    TResult Function(FailureServerException value)? serverException,
    TResult Function(FailureUnauthorized value)? unauthorized,
    TResult Function(FailureForbidden value)? forbidden,
    TResult Function(FailureSessionEnded value)? sessionEnded,
    TResult Function(FailureServiceNotAvailable value)? serviceNotAvailable,
    TResult Function(FailureInvalidArgs value)? invalidArgs,
    TResult Function(FailureInvalidValue value)? invalidValue,
    TResult Function(FailureUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (firebaseException != null) {
      return firebaseException(this);
    }
    return orElse();
  }
}

abstract class FailureFirebaseException extends Failure implements Exception {
  const factory FailureFirebaseException({required final String message}) =
      _$FailureFirebaseExceptionImpl;
  const FailureFirebaseException._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$FailureFirebaseExceptionImplCopyWith<_$FailureFirebaseExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureUnexpectedValueExceptionImplCopyWith<$Res> {
  factory _$$FailureUnexpectedValueExceptionImplCopyWith(
          _$FailureUnexpectedValueExceptionImpl value,
          $Res Function(_$FailureUnexpectedValueExceptionImpl) then) =
      __$$FailureUnexpectedValueExceptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ValueFailure<dynamic> valueFailure});

  $ValueFailureCopyWith<dynamic, $Res> get valueFailure;
}

/// @nodoc
class __$$FailureUnexpectedValueExceptionImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FailureUnexpectedValueExceptionImpl>
    implements _$$FailureUnexpectedValueExceptionImplCopyWith<$Res> {
  __$$FailureUnexpectedValueExceptionImplCopyWithImpl(
      _$FailureUnexpectedValueExceptionImpl _value,
      $Res Function(_$FailureUnexpectedValueExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? valueFailure = null,
  }) {
    return _then(_$FailureUnexpectedValueExceptionImpl(
      null == valueFailure
          ? _value.valueFailure
          : valueFailure // ignore: cast_nullable_to_non_nullable
              as ValueFailure<dynamic>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ValueFailureCopyWith<dynamic, $Res> get valueFailure {
    return $ValueFailureCopyWith<dynamic, $Res>(_value.valueFailure, (value) {
      return _then(_value.copyWith(valueFailure: value));
    });
  }
}

/// @nodoc

class _$FailureUnexpectedValueExceptionImpl
    extends FailureUnexpectedValueException {
  const _$FailureUnexpectedValueExceptionImpl(this.valueFailure) : super._();

  @override
  final ValueFailure<dynamic> valueFailure;

  @override
  String toString() {
    return 'Failure.unexpectedValueException(valueFailure: $valueFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureUnexpectedValueExceptionImpl &&
            (identical(other.valueFailure, valueFailure) ||
                other.valueFailure == valueFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, valueFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureUnexpectedValueExceptionImplCopyWith<
          _$FailureUnexpectedValueExceptionImpl>
      get copyWith => __$$FailureUnexpectedValueExceptionImplCopyWithImpl<
          _$FailureUnexpectedValueExceptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) firebaseException,
    required TResult Function(ValueFailure<dynamic> valueFailure)
        unexpectedValueException,
    required TResult Function(String message) serverException,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) forbidden,
    required TResult Function(String message) sessionEnded,
    required TResult Function(String message) serviceNotAvailable,
    required TResult Function(String message) invalidArgs,
    required TResult Function(String message) invalidValue,
    required TResult Function(String message) unknown,
  }) {
    return unexpectedValueException(valueFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? firebaseException,
    TResult? Function(ValueFailure<dynamic> valueFailure)?
        unexpectedValueException,
    TResult? Function(String message)? serverException,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? forbidden,
    TResult? Function(String message)? sessionEnded,
    TResult? Function(String message)? serviceNotAvailable,
    TResult? Function(String message)? invalidArgs,
    TResult? Function(String message)? invalidValue,
    TResult? Function(String message)? unknown,
  }) {
    return unexpectedValueException?.call(valueFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? firebaseException,
    TResult Function(ValueFailure<dynamic> valueFailure)?
        unexpectedValueException,
    TResult Function(String message)? serverException,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? forbidden,
    TResult Function(String message)? sessionEnded,
    TResult Function(String message)? serviceNotAvailable,
    TResult Function(String message)? invalidArgs,
    TResult Function(String message)? invalidValue,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (unexpectedValueException != null) {
      return unexpectedValueException(valueFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailureFirebaseException value) firebaseException,
    required TResult Function(FailureUnexpectedValueException value)
        unexpectedValueException,
    required TResult Function(FailureServerException value) serverException,
    required TResult Function(FailureUnauthorized value) unauthorized,
    required TResult Function(FailureForbidden value) forbidden,
    required TResult Function(FailureSessionEnded value) sessionEnded,
    required TResult Function(FailureServiceNotAvailable value)
        serviceNotAvailable,
    required TResult Function(FailureInvalidArgs value) invalidArgs,
    required TResult Function(FailureInvalidValue value) invalidValue,
    required TResult Function(FailureUnknown value) unknown,
  }) {
    return unexpectedValueException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FailureFirebaseException value)? firebaseException,
    TResult? Function(FailureUnexpectedValueException value)?
        unexpectedValueException,
    TResult? Function(FailureServerException value)? serverException,
    TResult? Function(FailureUnauthorized value)? unauthorized,
    TResult? Function(FailureForbidden value)? forbidden,
    TResult? Function(FailureSessionEnded value)? sessionEnded,
    TResult? Function(FailureServiceNotAvailable value)? serviceNotAvailable,
    TResult? Function(FailureInvalidArgs value)? invalidArgs,
    TResult? Function(FailureInvalidValue value)? invalidValue,
    TResult? Function(FailureUnknown value)? unknown,
  }) {
    return unexpectedValueException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailureFirebaseException value)? firebaseException,
    TResult Function(FailureUnexpectedValueException value)?
        unexpectedValueException,
    TResult Function(FailureServerException value)? serverException,
    TResult Function(FailureUnauthorized value)? unauthorized,
    TResult Function(FailureForbidden value)? forbidden,
    TResult Function(FailureSessionEnded value)? sessionEnded,
    TResult Function(FailureServiceNotAvailable value)? serviceNotAvailable,
    TResult Function(FailureInvalidArgs value)? invalidArgs,
    TResult Function(FailureInvalidValue value)? invalidValue,
    TResult Function(FailureUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unexpectedValueException != null) {
      return unexpectedValueException(this);
    }
    return orElse();
  }
}

abstract class FailureUnexpectedValueException extends Failure
    implements Exception {
  const factory FailureUnexpectedValueException(
          final ValueFailure<dynamic> valueFailure) =
      _$FailureUnexpectedValueExceptionImpl;
  const FailureUnexpectedValueException._() : super._();

  ValueFailure<dynamic> get valueFailure;
  @JsonKey(ignore: true)
  _$$FailureUnexpectedValueExceptionImplCopyWith<
          _$FailureUnexpectedValueExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureServerExceptionImplCopyWith<$Res> {
  factory _$$FailureServerExceptionImplCopyWith(
          _$FailureServerExceptionImpl value,
          $Res Function(_$FailureServerExceptionImpl) then) =
      __$$FailureServerExceptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailureServerExceptionImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FailureServerExceptionImpl>
    implements _$$FailureServerExceptionImplCopyWith<$Res> {
  __$$FailureServerExceptionImplCopyWithImpl(
      _$FailureServerExceptionImpl _value,
      $Res Function(_$FailureServerExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailureServerExceptionImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureServerExceptionImpl extends FailureServerException {
  const _$FailureServerExceptionImpl({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.serverException(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureServerExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureServerExceptionImplCopyWith<_$FailureServerExceptionImpl>
      get copyWith => __$$FailureServerExceptionImplCopyWithImpl<
          _$FailureServerExceptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) firebaseException,
    required TResult Function(ValueFailure<dynamic> valueFailure)
        unexpectedValueException,
    required TResult Function(String message) serverException,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) forbidden,
    required TResult Function(String message) sessionEnded,
    required TResult Function(String message) serviceNotAvailable,
    required TResult Function(String message) invalidArgs,
    required TResult Function(String message) invalidValue,
    required TResult Function(String message) unknown,
  }) {
    return serverException(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? firebaseException,
    TResult? Function(ValueFailure<dynamic> valueFailure)?
        unexpectedValueException,
    TResult? Function(String message)? serverException,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? forbidden,
    TResult? Function(String message)? sessionEnded,
    TResult? Function(String message)? serviceNotAvailable,
    TResult? Function(String message)? invalidArgs,
    TResult? Function(String message)? invalidValue,
    TResult? Function(String message)? unknown,
  }) {
    return serverException?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? firebaseException,
    TResult Function(ValueFailure<dynamic> valueFailure)?
        unexpectedValueException,
    TResult Function(String message)? serverException,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? forbidden,
    TResult Function(String message)? sessionEnded,
    TResult Function(String message)? serviceNotAvailable,
    TResult Function(String message)? invalidArgs,
    TResult Function(String message)? invalidValue,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (serverException != null) {
      return serverException(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailureFirebaseException value) firebaseException,
    required TResult Function(FailureUnexpectedValueException value)
        unexpectedValueException,
    required TResult Function(FailureServerException value) serverException,
    required TResult Function(FailureUnauthorized value) unauthorized,
    required TResult Function(FailureForbidden value) forbidden,
    required TResult Function(FailureSessionEnded value) sessionEnded,
    required TResult Function(FailureServiceNotAvailable value)
        serviceNotAvailable,
    required TResult Function(FailureInvalidArgs value) invalidArgs,
    required TResult Function(FailureInvalidValue value) invalidValue,
    required TResult Function(FailureUnknown value) unknown,
  }) {
    return serverException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FailureFirebaseException value)? firebaseException,
    TResult? Function(FailureUnexpectedValueException value)?
        unexpectedValueException,
    TResult? Function(FailureServerException value)? serverException,
    TResult? Function(FailureUnauthorized value)? unauthorized,
    TResult? Function(FailureForbidden value)? forbidden,
    TResult? Function(FailureSessionEnded value)? sessionEnded,
    TResult? Function(FailureServiceNotAvailable value)? serviceNotAvailable,
    TResult? Function(FailureInvalidArgs value)? invalidArgs,
    TResult? Function(FailureInvalidValue value)? invalidValue,
    TResult? Function(FailureUnknown value)? unknown,
  }) {
    return serverException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailureFirebaseException value)? firebaseException,
    TResult Function(FailureUnexpectedValueException value)?
        unexpectedValueException,
    TResult Function(FailureServerException value)? serverException,
    TResult Function(FailureUnauthorized value)? unauthorized,
    TResult Function(FailureForbidden value)? forbidden,
    TResult Function(FailureSessionEnded value)? sessionEnded,
    TResult Function(FailureServiceNotAvailable value)? serviceNotAvailable,
    TResult Function(FailureInvalidArgs value)? invalidArgs,
    TResult Function(FailureInvalidValue value)? invalidValue,
    TResult Function(FailureUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (serverException != null) {
      return serverException(this);
    }
    return orElse();
  }
}

abstract class FailureServerException extends Failure implements Exception {
  const factory FailureServerException({required final String message}) =
      _$FailureServerExceptionImpl;
  const FailureServerException._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$FailureServerExceptionImplCopyWith<_$FailureServerExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureUnauthorizedImplCopyWith<$Res> {
  factory _$$FailureUnauthorizedImplCopyWith(_$FailureUnauthorizedImpl value,
          $Res Function(_$FailureUnauthorizedImpl) then) =
      __$$FailureUnauthorizedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailureUnauthorizedImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FailureUnauthorizedImpl>
    implements _$$FailureUnauthorizedImplCopyWith<$Res> {
  __$$FailureUnauthorizedImplCopyWithImpl(_$FailureUnauthorizedImpl _value,
      $Res Function(_$FailureUnauthorizedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailureUnauthorizedImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureUnauthorizedImpl extends FailureUnauthorized {
  const _$FailureUnauthorizedImpl({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.unauthorized(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureUnauthorizedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureUnauthorizedImplCopyWith<_$FailureUnauthorizedImpl> get copyWith =>
      __$$FailureUnauthorizedImplCopyWithImpl<_$FailureUnauthorizedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) firebaseException,
    required TResult Function(ValueFailure<dynamic> valueFailure)
        unexpectedValueException,
    required TResult Function(String message) serverException,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) forbidden,
    required TResult Function(String message) sessionEnded,
    required TResult Function(String message) serviceNotAvailable,
    required TResult Function(String message) invalidArgs,
    required TResult Function(String message) invalidValue,
    required TResult Function(String message) unknown,
  }) {
    return unauthorized(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? firebaseException,
    TResult? Function(ValueFailure<dynamic> valueFailure)?
        unexpectedValueException,
    TResult? Function(String message)? serverException,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? forbidden,
    TResult? Function(String message)? sessionEnded,
    TResult? Function(String message)? serviceNotAvailable,
    TResult? Function(String message)? invalidArgs,
    TResult? Function(String message)? invalidValue,
    TResult? Function(String message)? unknown,
  }) {
    return unauthorized?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? firebaseException,
    TResult Function(ValueFailure<dynamic> valueFailure)?
        unexpectedValueException,
    TResult Function(String message)? serverException,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? forbidden,
    TResult Function(String message)? sessionEnded,
    TResult Function(String message)? serviceNotAvailable,
    TResult Function(String message)? invalidArgs,
    TResult Function(String message)? invalidValue,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailureFirebaseException value) firebaseException,
    required TResult Function(FailureUnexpectedValueException value)
        unexpectedValueException,
    required TResult Function(FailureServerException value) serverException,
    required TResult Function(FailureUnauthorized value) unauthorized,
    required TResult Function(FailureForbidden value) forbidden,
    required TResult Function(FailureSessionEnded value) sessionEnded,
    required TResult Function(FailureServiceNotAvailable value)
        serviceNotAvailable,
    required TResult Function(FailureInvalidArgs value) invalidArgs,
    required TResult Function(FailureInvalidValue value) invalidValue,
    required TResult Function(FailureUnknown value) unknown,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FailureFirebaseException value)? firebaseException,
    TResult? Function(FailureUnexpectedValueException value)?
        unexpectedValueException,
    TResult? Function(FailureServerException value)? serverException,
    TResult? Function(FailureUnauthorized value)? unauthorized,
    TResult? Function(FailureForbidden value)? forbidden,
    TResult? Function(FailureSessionEnded value)? sessionEnded,
    TResult? Function(FailureServiceNotAvailable value)? serviceNotAvailable,
    TResult? Function(FailureInvalidArgs value)? invalidArgs,
    TResult? Function(FailureInvalidValue value)? invalidValue,
    TResult? Function(FailureUnknown value)? unknown,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailureFirebaseException value)? firebaseException,
    TResult Function(FailureUnexpectedValueException value)?
        unexpectedValueException,
    TResult Function(FailureServerException value)? serverException,
    TResult Function(FailureUnauthorized value)? unauthorized,
    TResult Function(FailureForbidden value)? forbidden,
    TResult Function(FailureSessionEnded value)? sessionEnded,
    TResult Function(FailureServiceNotAvailable value)? serviceNotAvailable,
    TResult Function(FailureInvalidArgs value)? invalidArgs,
    TResult Function(FailureInvalidValue value)? invalidValue,
    TResult Function(FailureUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class FailureUnauthorized extends Failure implements Exception {
  const factory FailureUnauthorized({required final String message}) =
      _$FailureUnauthorizedImpl;
  const FailureUnauthorized._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$FailureUnauthorizedImplCopyWith<_$FailureUnauthorizedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureForbiddenImplCopyWith<$Res> {
  factory _$$FailureForbiddenImplCopyWith(_$FailureForbiddenImpl value,
          $Res Function(_$FailureForbiddenImpl) then) =
      __$$FailureForbiddenImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailureForbiddenImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FailureForbiddenImpl>
    implements _$$FailureForbiddenImplCopyWith<$Res> {
  __$$FailureForbiddenImplCopyWithImpl(_$FailureForbiddenImpl _value,
      $Res Function(_$FailureForbiddenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailureForbiddenImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureForbiddenImpl extends FailureForbidden {
  const _$FailureForbiddenImpl({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.forbidden(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureForbiddenImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureForbiddenImplCopyWith<_$FailureForbiddenImpl> get copyWith =>
      __$$FailureForbiddenImplCopyWithImpl<_$FailureForbiddenImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) firebaseException,
    required TResult Function(ValueFailure<dynamic> valueFailure)
        unexpectedValueException,
    required TResult Function(String message) serverException,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) forbidden,
    required TResult Function(String message) sessionEnded,
    required TResult Function(String message) serviceNotAvailable,
    required TResult Function(String message) invalidArgs,
    required TResult Function(String message) invalidValue,
    required TResult Function(String message) unknown,
  }) {
    return forbidden(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? firebaseException,
    TResult? Function(ValueFailure<dynamic> valueFailure)?
        unexpectedValueException,
    TResult? Function(String message)? serverException,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? forbidden,
    TResult? Function(String message)? sessionEnded,
    TResult? Function(String message)? serviceNotAvailable,
    TResult? Function(String message)? invalidArgs,
    TResult? Function(String message)? invalidValue,
    TResult? Function(String message)? unknown,
  }) {
    return forbidden?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? firebaseException,
    TResult Function(ValueFailure<dynamic> valueFailure)?
        unexpectedValueException,
    TResult Function(String message)? serverException,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? forbidden,
    TResult Function(String message)? sessionEnded,
    TResult Function(String message)? serviceNotAvailable,
    TResult Function(String message)? invalidArgs,
    TResult Function(String message)? invalidValue,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (forbidden != null) {
      return forbidden(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailureFirebaseException value) firebaseException,
    required TResult Function(FailureUnexpectedValueException value)
        unexpectedValueException,
    required TResult Function(FailureServerException value) serverException,
    required TResult Function(FailureUnauthorized value) unauthorized,
    required TResult Function(FailureForbidden value) forbidden,
    required TResult Function(FailureSessionEnded value) sessionEnded,
    required TResult Function(FailureServiceNotAvailable value)
        serviceNotAvailable,
    required TResult Function(FailureInvalidArgs value) invalidArgs,
    required TResult Function(FailureInvalidValue value) invalidValue,
    required TResult Function(FailureUnknown value) unknown,
  }) {
    return forbidden(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FailureFirebaseException value)? firebaseException,
    TResult? Function(FailureUnexpectedValueException value)?
        unexpectedValueException,
    TResult? Function(FailureServerException value)? serverException,
    TResult? Function(FailureUnauthorized value)? unauthorized,
    TResult? Function(FailureForbidden value)? forbidden,
    TResult? Function(FailureSessionEnded value)? sessionEnded,
    TResult? Function(FailureServiceNotAvailable value)? serviceNotAvailable,
    TResult? Function(FailureInvalidArgs value)? invalidArgs,
    TResult? Function(FailureInvalidValue value)? invalidValue,
    TResult? Function(FailureUnknown value)? unknown,
  }) {
    return forbidden?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailureFirebaseException value)? firebaseException,
    TResult Function(FailureUnexpectedValueException value)?
        unexpectedValueException,
    TResult Function(FailureServerException value)? serverException,
    TResult Function(FailureUnauthorized value)? unauthorized,
    TResult Function(FailureForbidden value)? forbidden,
    TResult Function(FailureSessionEnded value)? sessionEnded,
    TResult Function(FailureServiceNotAvailable value)? serviceNotAvailable,
    TResult Function(FailureInvalidArgs value)? invalidArgs,
    TResult Function(FailureInvalidValue value)? invalidValue,
    TResult Function(FailureUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (forbidden != null) {
      return forbidden(this);
    }
    return orElse();
  }
}

abstract class FailureForbidden extends Failure implements Exception {
  const factory FailureForbidden({required final String message}) =
      _$FailureForbiddenImpl;
  const FailureForbidden._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$FailureForbiddenImplCopyWith<_$FailureForbiddenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureSessionEndedImplCopyWith<$Res> {
  factory _$$FailureSessionEndedImplCopyWith(_$FailureSessionEndedImpl value,
          $Res Function(_$FailureSessionEndedImpl) then) =
      __$$FailureSessionEndedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailureSessionEndedImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FailureSessionEndedImpl>
    implements _$$FailureSessionEndedImplCopyWith<$Res> {
  __$$FailureSessionEndedImplCopyWithImpl(_$FailureSessionEndedImpl _value,
      $Res Function(_$FailureSessionEndedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailureSessionEndedImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureSessionEndedImpl extends FailureSessionEnded {
  const _$FailureSessionEndedImpl({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.sessionEnded(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureSessionEndedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureSessionEndedImplCopyWith<_$FailureSessionEndedImpl> get copyWith =>
      __$$FailureSessionEndedImplCopyWithImpl<_$FailureSessionEndedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) firebaseException,
    required TResult Function(ValueFailure<dynamic> valueFailure)
        unexpectedValueException,
    required TResult Function(String message) serverException,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) forbidden,
    required TResult Function(String message) sessionEnded,
    required TResult Function(String message) serviceNotAvailable,
    required TResult Function(String message) invalidArgs,
    required TResult Function(String message) invalidValue,
    required TResult Function(String message) unknown,
  }) {
    return sessionEnded(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? firebaseException,
    TResult? Function(ValueFailure<dynamic> valueFailure)?
        unexpectedValueException,
    TResult? Function(String message)? serverException,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? forbidden,
    TResult? Function(String message)? sessionEnded,
    TResult? Function(String message)? serviceNotAvailable,
    TResult? Function(String message)? invalidArgs,
    TResult? Function(String message)? invalidValue,
    TResult? Function(String message)? unknown,
  }) {
    return sessionEnded?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? firebaseException,
    TResult Function(ValueFailure<dynamic> valueFailure)?
        unexpectedValueException,
    TResult Function(String message)? serverException,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? forbidden,
    TResult Function(String message)? sessionEnded,
    TResult Function(String message)? serviceNotAvailable,
    TResult Function(String message)? invalidArgs,
    TResult Function(String message)? invalidValue,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (sessionEnded != null) {
      return sessionEnded(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailureFirebaseException value) firebaseException,
    required TResult Function(FailureUnexpectedValueException value)
        unexpectedValueException,
    required TResult Function(FailureServerException value) serverException,
    required TResult Function(FailureUnauthorized value) unauthorized,
    required TResult Function(FailureForbidden value) forbidden,
    required TResult Function(FailureSessionEnded value) sessionEnded,
    required TResult Function(FailureServiceNotAvailable value)
        serviceNotAvailable,
    required TResult Function(FailureInvalidArgs value) invalidArgs,
    required TResult Function(FailureInvalidValue value) invalidValue,
    required TResult Function(FailureUnknown value) unknown,
  }) {
    return sessionEnded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FailureFirebaseException value)? firebaseException,
    TResult? Function(FailureUnexpectedValueException value)?
        unexpectedValueException,
    TResult? Function(FailureServerException value)? serverException,
    TResult? Function(FailureUnauthorized value)? unauthorized,
    TResult? Function(FailureForbidden value)? forbidden,
    TResult? Function(FailureSessionEnded value)? sessionEnded,
    TResult? Function(FailureServiceNotAvailable value)? serviceNotAvailable,
    TResult? Function(FailureInvalidArgs value)? invalidArgs,
    TResult? Function(FailureInvalidValue value)? invalidValue,
    TResult? Function(FailureUnknown value)? unknown,
  }) {
    return sessionEnded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailureFirebaseException value)? firebaseException,
    TResult Function(FailureUnexpectedValueException value)?
        unexpectedValueException,
    TResult Function(FailureServerException value)? serverException,
    TResult Function(FailureUnauthorized value)? unauthorized,
    TResult Function(FailureForbidden value)? forbidden,
    TResult Function(FailureSessionEnded value)? sessionEnded,
    TResult Function(FailureServiceNotAvailable value)? serviceNotAvailable,
    TResult Function(FailureInvalidArgs value)? invalidArgs,
    TResult Function(FailureInvalidValue value)? invalidValue,
    TResult Function(FailureUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (sessionEnded != null) {
      return sessionEnded(this);
    }
    return orElse();
  }
}

abstract class FailureSessionEnded extends Failure implements Exception {
  const factory FailureSessionEnded({required final String message}) =
      _$FailureSessionEndedImpl;
  const FailureSessionEnded._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$FailureSessionEndedImplCopyWith<_$FailureSessionEndedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureServiceNotAvailableImplCopyWith<$Res> {
  factory _$$FailureServiceNotAvailableImplCopyWith(
          _$FailureServiceNotAvailableImpl value,
          $Res Function(_$FailureServiceNotAvailableImpl) then) =
      __$$FailureServiceNotAvailableImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailureServiceNotAvailableImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FailureServiceNotAvailableImpl>
    implements _$$FailureServiceNotAvailableImplCopyWith<$Res> {
  __$$FailureServiceNotAvailableImplCopyWithImpl(
      _$FailureServiceNotAvailableImpl _value,
      $Res Function(_$FailureServiceNotAvailableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailureServiceNotAvailableImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureServiceNotAvailableImpl extends FailureServiceNotAvailable {
  const _$FailureServiceNotAvailableImpl({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.serviceNotAvailable(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureServiceNotAvailableImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureServiceNotAvailableImplCopyWith<_$FailureServiceNotAvailableImpl>
      get copyWith => __$$FailureServiceNotAvailableImplCopyWithImpl<
          _$FailureServiceNotAvailableImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) firebaseException,
    required TResult Function(ValueFailure<dynamic> valueFailure)
        unexpectedValueException,
    required TResult Function(String message) serverException,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) forbidden,
    required TResult Function(String message) sessionEnded,
    required TResult Function(String message) serviceNotAvailable,
    required TResult Function(String message) invalidArgs,
    required TResult Function(String message) invalidValue,
    required TResult Function(String message) unknown,
  }) {
    return serviceNotAvailable(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? firebaseException,
    TResult? Function(ValueFailure<dynamic> valueFailure)?
        unexpectedValueException,
    TResult? Function(String message)? serverException,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? forbidden,
    TResult? Function(String message)? sessionEnded,
    TResult? Function(String message)? serviceNotAvailable,
    TResult? Function(String message)? invalidArgs,
    TResult? Function(String message)? invalidValue,
    TResult? Function(String message)? unknown,
  }) {
    return serviceNotAvailable?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? firebaseException,
    TResult Function(ValueFailure<dynamic> valueFailure)?
        unexpectedValueException,
    TResult Function(String message)? serverException,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? forbidden,
    TResult Function(String message)? sessionEnded,
    TResult Function(String message)? serviceNotAvailable,
    TResult Function(String message)? invalidArgs,
    TResult Function(String message)? invalidValue,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (serviceNotAvailable != null) {
      return serviceNotAvailable(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailureFirebaseException value) firebaseException,
    required TResult Function(FailureUnexpectedValueException value)
        unexpectedValueException,
    required TResult Function(FailureServerException value) serverException,
    required TResult Function(FailureUnauthorized value) unauthorized,
    required TResult Function(FailureForbidden value) forbidden,
    required TResult Function(FailureSessionEnded value) sessionEnded,
    required TResult Function(FailureServiceNotAvailable value)
        serviceNotAvailable,
    required TResult Function(FailureInvalidArgs value) invalidArgs,
    required TResult Function(FailureInvalidValue value) invalidValue,
    required TResult Function(FailureUnknown value) unknown,
  }) {
    return serviceNotAvailable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FailureFirebaseException value)? firebaseException,
    TResult? Function(FailureUnexpectedValueException value)?
        unexpectedValueException,
    TResult? Function(FailureServerException value)? serverException,
    TResult? Function(FailureUnauthorized value)? unauthorized,
    TResult? Function(FailureForbidden value)? forbidden,
    TResult? Function(FailureSessionEnded value)? sessionEnded,
    TResult? Function(FailureServiceNotAvailable value)? serviceNotAvailable,
    TResult? Function(FailureInvalidArgs value)? invalidArgs,
    TResult? Function(FailureInvalidValue value)? invalidValue,
    TResult? Function(FailureUnknown value)? unknown,
  }) {
    return serviceNotAvailable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailureFirebaseException value)? firebaseException,
    TResult Function(FailureUnexpectedValueException value)?
        unexpectedValueException,
    TResult Function(FailureServerException value)? serverException,
    TResult Function(FailureUnauthorized value)? unauthorized,
    TResult Function(FailureForbidden value)? forbidden,
    TResult Function(FailureSessionEnded value)? sessionEnded,
    TResult Function(FailureServiceNotAvailable value)? serviceNotAvailable,
    TResult Function(FailureInvalidArgs value)? invalidArgs,
    TResult Function(FailureInvalidValue value)? invalidValue,
    TResult Function(FailureUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (serviceNotAvailable != null) {
      return serviceNotAvailable(this);
    }
    return orElse();
  }
}

abstract class FailureServiceNotAvailable extends Failure implements Exception {
  const factory FailureServiceNotAvailable({required final String message}) =
      _$FailureServiceNotAvailableImpl;
  const FailureServiceNotAvailable._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$FailureServiceNotAvailableImplCopyWith<_$FailureServiceNotAvailableImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureInvalidArgsImplCopyWith<$Res> {
  factory _$$FailureInvalidArgsImplCopyWith(_$FailureInvalidArgsImpl value,
          $Res Function(_$FailureInvalidArgsImpl) then) =
      __$$FailureInvalidArgsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailureInvalidArgsImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FailureInvalidArgsImpl>
    implements _$$FailureInvalidArgsImplCopyWith<$Res> {
  __$$FailureInvalidArgsImplCopyWithImpl(_$FailureInvalidArgsImpl _value,
      $Res Function(_$FailureInvalidArgsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailureInvalidArgsImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureInvalidArgsImpl extends FailureInvalidArgs {
  const _$FailureInvalidArgsImpl({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.invalidArgs(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureInvalidArgsImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureInvalidArgsImplCopyWith<_$FailureInvalidArgsImpl> get copyWith =>
      __$$FailureInvalidArgsImplCopyWithImpl<_$FailureInvalidArgsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) firebaseException,
    required TResult Function(ValueFailure<dynamic> valueFailure)
        unexpectedValueException,
    required TResult Function(String message) serverException,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) forbidden,
    required TResult Function(String message) sessionEnded,
    required TResult Function(String message) serviceNotAvailable,
    required TResult Function(String message) invalidArgs,
    required TResult Function(String message) invalidValue,
    required TResult Function(String message) unknown,
  }) {
    return invalidArgs(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? firebaseException,
    TResult? Function(ValueFailure<dynamic> valueFailure)?
        unexpectedValueException,
    TResult? Function(String message)? serverException,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? forbidden,
    TResult? Function(String message)? sessionEnded,
    TResult? Function(String message)? serviceNotAvailable,
    TResult? Function(String message)? invalidArgs,
    TResult? Function(String message)? invalidValue,
    TResult? Function(String message)? unknown,
  }) {
    return invalidArgs?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? firebaseException,
    TResult Function(ValueFailure<dynamic> valueFailure)?
        unexpectedValueException,
    TResult Function(String message)? serverException,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? forbidden,
    TResult Function(String message)? sessionEnded,
    TResult Function(String message)? serviceNotAvailable,
    TResult Function(String message)? invalidArgs,
    TResult Function(String message)? invalidValue,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (invalidArgs != null) {
      return invalidArgs(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailureFirebaseException value) firebaseException,
    required TResult Function(FailureUnexpectedValueException value)
        unexpectedValueException,
    required TResult Function(FailureServerException value) serverException,
    required TResult Function(FailureUnauthorized value) unauthorized,
    required TResult Function(FailureForbidden value) forbidden,
    required TResult Function(FailureSessionEnded value) sessionEnded,
    required TResult Function(FailureServiceNotAvailable value)
        serviceNotAvailable,
    required TResult Function(FailureInvalidArgs value) invalidArgs,
    required TResult Function(FailureInvalidValue value) invalidValue,
    required TResult Function(FailureUnknown value) unknown,
  }) {
    return invalidArgs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FailureFirebaseException value)? firebaseException,
    TResult? Function(FailureUnexpectedValueException value)?
        unexpectedValueException,
    TResult? Function(FailureServerException value)? serverException,
    TResult? Function(FailureUnauthorized value)? unauthorized,
    TResult? Function(FailureForbidden value)? forbidden,
    TResult? Function(FailureSessionEnded value)? sessionEnded,
    TResult? Function(FailureServiceNotAvailable value)? serviceNotAvailable,
    TResult? Function(FailureInvalidArgs value)? invalidArgs,
    TResult? Function(FailureInvalidValue value)? invalidValue,
    TResult? Function(FailureUnknown value)? unknown,
  }) {
    return invalidArgs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailureFirebaseException value)? firebaseException,
    TResult Function(FailureUnexpectedValueException value)?
        unexpectedValueException,
    TResult Function(FailureServerException value)? serverException,
    TResult Function(FailureUnauthorized value)? unauthorized,
    TResult Function(FailureForbidden value)? forbidden,
    TResult Function(FailureSessionEnded value)? sessionEnded,
    TResult Function(FailureServiceNotAvailable value)? serviceNotAvailable,
    TResult Function(FailureInvalidArgs value)? invalidArgs,
    TResult Function(FailureInvalidValue value)? invalidValue,
    TResult Function(FailureUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (invalidArgs != null) {
      return invalidArgs(this);
    }
    return orElse();
  }
}

abstract class FailureInvalidArgs extends Failure implements Exception {
  const factory FailureInvalidArgs({required final String message}) =
      _$FailureInvalidArgsImpl;
  const FailureInvalidArgs._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$FailureInvalidArgsImplCopyWith<_$FailureInvalidArgsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureInvalidValueImplCopyWith<$Res> {
  factory _$$FailureInvalidValueImplCopyWith(_$FailureInvalidValueImpl value,
          $Res Function(_$FailureInvalidValueImpl) then) =
      __$$FailureInvalidValueImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailureInvalidValueImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FailureInvalidValueImpl>
    implements _$$FailureInvalidValueImplCopyWith<$Res> {
  __$$FailureInvalidValueImplCopyWithImpl(_$FailureInvalidValueImpl _value,
      $Res Function(_$FailureInvalidValueImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailureInvalidValueImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureInvalidValueImpl extends FailureInvalidValue {
  const _$FailureInvalidValueImpl({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.invalidValue(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureInvalidValueImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureInvalidValueImplCopyWith<_$FailureInvalidValueImpl> get copyWith =>
      __$$FailureInvalidValueImplCopyWithImpl<_$FailureInvalidValueImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) firebaseException,
    required TResult Function(ValueFailure<dynamic> valueFailure)
        unexpectedValueException,
    required TResult Function(String message) serverException,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) forbidden,
    required TResult Function(String message) sessionEnded,
    required TResult Function(String message) serviceNotAvailable,
    required TResult Function(String message) invalidArgs,
    required TResult Function(String message) invalidValue,
    required TResult Function(String message) unknown,
  }) {
    return invalidValue(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? firebaseException,
    TResult? Function(ValueFailure<dynamic> valueFailure)?
        unexpectedValueException,
    TResult? Function(String message)? serverException,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? forbidden,
    TResult? Function(String message)? sessionEnded,
    TResult? Function(String message)? serviceNotAvailable,
    TResult? Function(String message)? invalidArgs,
    TResult? Function(String message)? invalidValue,
    TResult? Function(String message)? unknown,
  }) {
    return invalidValue?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? firebaseException,
    TResult Function(ValueFailure<dynamic> valueFailure)?
        unexpectedValueException,
    TResult Function(String message)? serverException,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? forbidden,
    TResult Function(String message)? sessionEnded,
    TResult Function(String message)? serviceNotAvailable,
    TResult Function(String message)? invalidArgs,
    TResult Function(String message)? invalidValue,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (invalidValue != null) {
      return invalidValue(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailureFirebaseException value) firebaseException,
    required TResult Function(FailureUnexpectedValueException value)
        unexpectedValueException,
    required TResult Function(FailureServerException value) serverException,
    required TResult Function(FailureUnauthorized value) unauthorized,
    required TResult Function(FailureForbidden value) forbidden,
    required TResult Function(FailureSessionEnded value) sessionEnded,
    required TResult Function(FailureServiceNotAvailable value)
        serviceNotAvailable,
    required TResult Function(FailureInvalidArgs value) invalidArgs,
    required TResult Function(FailureInvalidValue value) invalidValue,
    required TResult Function(FailureUnknown value) unknown,
  }) {
    return invalidValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FailureFirebaseException value)? firebaseException,
    TResult? Function(FailureUnexpectedValueException value)?
        unexpectedValueException,
    TResult? Function(FailureServerException value)? serverException,
    TResult? Function(FailureUnauthorized value)? unauthorized,
    TResult? Function(FailureForbidden value)? forbidden,
    TResult? Function(FailureSessionEnded value)? sessionEnded,
    TResult? Function(FailureServiceNotAvailable value)? serviceNotAvailable,
    TResult? Function(FailureInvalidArgs value)? invalidArgs,
    TResult? Function(FailureInvalidValue value)? invalidValue,
    TResult? Function(FailureUnknown value)? unknown,
  }) {
    return invalidValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailureFirebaseException value)? firebaseException,
    TResult Function(FailureUnexpectedValueException value)?
        unexpectedValueException,
    TResult Function(FailureServerException value)? serverException,
    TResult Function(FailureUnauthorized value)? unauthorized,
    TResult Function(FailureForbidden value)? forbidden,
    TResult Function(FailureSessionEnded value)? sessionEnded,
    TResult Function(FailureServiceNotAvailable value)? serviceNotAvailable,
    TResult Function(FailureInvalidArgs value)? invalidArgs,
    TResult Function(FailureInvalidValue value)? invalidValue,
    TResult Function(FailureUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (invalidValue != null) {
      return invalidValue(this);
    }
    return orElse();
  }
}

abstract class FailureInvalidValue extends Failure implements Exception {
  const factory FailureInvalidValue({required final String message}) =
      _$FailureInvalidValueImpl;
  const FailureInvalidValue._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$FailureInvalidValueImplCopyWith<_$FailureInvalidValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureUnknownImplCopyWith<$Res> {
  factory _$$FailureUnknownImplCopyWith(_$FailureUnknownImpl value,
          $Res Function(_$FailureUnknownImpl) then) =
      __$$FailureUnknownImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailureUnknownImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FailureUnknownImpl>
    implements _$$FailureUnknownImplCopyWith<$Res> {
  __$$FailureUnknownImplCopyWithImpl(
      _$FailureUnknownImpl _value, $Res Function(_$FailureUnknownImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailureUnknownImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureUnknownImpl extends FailureUnknown {
  const _$FailureUnknownImpl({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.unknown(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureUnknownImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureUnknownImplCopyWith<_$FailureUnknownImpl> get copyWith =>
      __$$FailureUnknownImplCopyWithImpl<_$FailureUnknownImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) firebaseException,
    required TResult Function(ValueFailure<dynamic> valueFailure)
        unexpectedValueException,
    required TResult Function(String message) serverException,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) forbidden,
    required TResult Function(String message) sessionEnded,
    required TResult Function(String message) serviceNotAvailable,
    required TResult Function(String message) invalidArgs,
    required TResult Function(String message) invalidValue,
    required TResult Function(String message) unknown,
  }) {
    return unknown(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? firebaseException,
    TResult? Function(ValueFailure<dynamic> valueFailure)?
        unexpectedValueException,
    TResult? Function(String message)? serverException,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? forbidden,
    TResult? Function(String message)? sessionEnded,
    TResult? Function(String message)? serviceNotAvailable,
    TResult? Function(String message)? invalidArgs,
    TResult? Function(String message)? invalidValue,
    TResult? Function(String message)? unknown,
  }) {
    return unknown?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? firebaseException,
    TResult Function(ValueFailure<dynamic> valueFailure)?
        unexpectedValueException,
    TResult Function(String message)? serverException,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? forbidden,
    TResult Function(String message)? sessionEnded,
    TResult Function(String message)? serviceNotAvailable,
    TResult Function(String message)? invalidArgs,
    TResult Function(String message)? invalidValue,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailureFirebaseException value) firebaseException,
    required TResult Function(FailureUnexpectedValueException value)
        unexpectedValueException,
    required TResult Function(FailureServerException value) serverException,
    required TResult Function(FailureUnauthorized value) unauthorized,
    required TResult Function(FailureForbidden value) forbidden,
    required TResult Function(FailureSessionEnded value) sessionEnded,
    required TResult Function(FailureServiceNotAvailable value)
        serviceNotAvailable,
    required TResult Function(FailureInvalidArgs value) invalidArgs,
    required TResult Function(FailureInvalidValue value) invalidValue,
    required TResult Function(FailureUnknown value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FailureFirebaseException value)? firebaseException,
    TResult? Function(FailureUnexpectedValueException value)?
        unexpectedValueException,
    TResult? Function(FailureServerException value)? serverException,
    TResult? Function(FailureUnauthorized value)? unauthorized,
    TResult? Function(FailureForbidden value)? forbidden,
    TResult? Function(FailureSessionEnded value)? sessionEnded,
    TResult? Function(FailureServiceNotAvailable value)? serviceNotAvailable,
    TResult? Function(FailureInvalidArgs value)? invalidArgs,
    TResult? Function(FailureInvalidValue value)? invalidValue,
    TResult? Function(FailureUnknown value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailureFirebaseException value)? firebaseException,
    TResult Function(FailureUnexpectedValueException value)?
        unexpectedValueException,
    TResult Function(FailureServerException value)? serverException,
    TResult Function(FailureUnauthorized value)? unauthorized,
    TResult Function(FailureForbidden value)? forbidden,
    TResult Function(FailureSessionEnded value)? sessionEnded,
    TResult Function(FailureServiceNotAvailable value)? serviceNotAvailable,
    TResult Function(FailureInvalidArgs value)? invalidArgs,
    TResult Function(FailureInvalidValue value)? invalidValue,
    TResult Function(FailureUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class FailureUnknown extends Failure implements Exception {
  const factory FailureUnknown({required final String message}) =
      _$FailureUnknownImpl;
  const FailureUnknown._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$FailureUnknownImplCopyWith<_$FailureUnknownImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
