// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginFormLoggedIn value) loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginFormLoggedIn value)? loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginFormLoggedIn value)? loggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginFormEventCopyWith<$Res> {
  factory $LoginFormEventCopyWith(
          LoginFormEvent value, $Res Function(LoginFormEvent) then) =
      _$LoginFormEventCopyWithImpl<$Res, LoginFormEvent>;
}

/// @nodoc
class _$LoginFormEventCopyWithImpl<$Res, $Val extends LoginFormEvent>
    implements $LoginFormEventCopyWith<$Res> {
  _$LoginFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginFormLoggedInImplCopyWith<$Res> {
  factory _$$LoginFormLoggedInImplCopyWith(_$LoginFormLoggedInImpl value,
          $Res Function(_$LoginFormLoggedInImpl) then) =
      __$$LoginFormLoggedInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginFormLoggedInImplCopyWithImpl<$Res>
    extends _$LoginFormEventCopyWithImpl<$Res, _$LoginFormLoggedInImpl>
    implements _$$LoginFormLoggedInImplCopyWith<$Res> {
  __$$LoginFormLoggedInImplCopyWithImpl(_$LoginFormLoggedInImpl _value,
      $Res Function(_$LoginFormLoggedInImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginFormLoggedInImpl implements LoginFormLoggedIn {
  const _$LoginFormLoggedInImpl();

  @override
  String toString() {
    return 'LoginFormEvent.loggedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginFormLoggedInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggedIn,
  }) {
    return loggedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loggedIn,
  }) {
    return loggedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggedIn,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginFormLoggedIn value) loggedIn,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginFormLoggedIn value)? loggedIn,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginFormLoggedIn value)? loggedIn,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class LoginFormLoggedIn implements LoginFormEvent {
  const factory LoginFormLoggedIn() = _$LoginFormLoggedInImpl;
}

/// @nodoc
mixin _$LoginFormState {
  ///for showing loading indicator
  bool get isLoggingIn => throw _privateConstructorUsedError;

  ///for showing reponses from infrastructure layer
  Option<Either<Failure, Option<Unit>>> get loginFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginFormStateCopyWith<LoginFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginFormStateCopyWith<$Res> {
  factory $LoginFormStateCopyWith(
          LoginFormState value, $Res Function(LoginFormState) then) =
      _$LoginFormStateCopyWithImpl<$Res, LoginFormState>;
  @useResult
  $Res call(
      {bool isLoggingIn,
      Option<Either<Failure, Option<Unit>>> loginFailureOrSuccessOption});
}

/// @nodoc
class _$LoginFormStateCopyWithImpl<$Res, $Val extends LoginFormState>
    implements $LoginFormStateCopyWith<$Res> {
  _$LoginFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoggingIn = null,
    Object? loginFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      isLoggingIn: null == isLoggingIn
          ? _value.isLoggingIn
          : isLoggingIn // ignore: cast_nullable_to_non_nullable
              as bool,
      loginFailureOrSuccessOption: null == loginFailureOrSuccessOption
          ? _value.loginFailureOrSuccessOption
          : loginFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Option<Unit>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginFormStateImplCopyWith<$Res>
    implements $LoginFormStateCopyWith<$Res> {
  factory _$$LoginFormStateImplCopyWith(_$LoginFormStateImpl value,
          $Res Function(_$LoginFormStateImpl) then) =
      __$$LoginFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoggingIn,
      Option<Either<Failure, Option<Unit>>> loginFailureOrSuccessOption});
}

/// @nodoc
class __$$LoginFormStateImplCopyWithImpl<$Res>
    extends _$LoginFormStateCopyWithImpl<$Res, _$LoginFormStateImpl>
    implements _$$LoginFormStateImplCopyWith<$Res> {
  __$$LoginFormStateImplCopyWithImpl(
      _$LoginFormStateImpl _value, $Res Function(_$LoginFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoggingIn = null,
    Object? loginFailureOrSuccessOption = null,
  }) {
    return _then(_$LoginFormStateImpl(
      isLoggingIn: null == isLoggingIn
          ? _value.isLoggingIn
          : isLoggingIn // ignore: cast_nullable_to_non_nullable
              as bool,
      loginFailureOrSuccessOption: null == loginFailureOrSuccessOption
          ? _value.loginFailureOrSuccessOption
          : loginFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Option<Unit>>>,
    ));
  }
}

/// @nodoc

class _$LoginFormStateImpl implements _LoginFormState {
  const _$LoginFormStateImpl(
      {required this.isLoggingIn, required this.loginFailureOrSuccessOption});

  ///for showing loading indicator
  @override
  final bool isLoggingIn;

  ///for showing reponses from infrastructure layer
  @override
  final Option<Either<Failure, Option<Unit>>> loginFailureOrSuccessOption;

  @override
  String toString() {
    return 'LoginFormState(isLoggingIn: $isLoggingIn, loginFailureOrSuccessOption: $loginFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginFormStateImpl &&
            (identical(other.isLoggingIn, isLoggingIn) ||
                other.isLoggingIn == isLoggingIn) &&
            (identical(other.loginFailureOrSuccessOption,
                    loginFailureOrSuccessOption) ||
                other.loginFailureOrSuccessOption ==
                    loginFailureOrSuccessOption));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoggingIn, loginFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginFormStateImplCopyWith<_$LoginFormStateImpl> get copyWith =>
      __$$LoginFormStateImplCopyWithImpl<_$LoginFormStateImpl>(
          this, _$identity);
}

abstract class _LoginFormState implements LoginFormState {
  const factory _LoginFormState(
      {required final bool isLoggingIn,
      required final Option<Either<Failure, Option<Unit>>>
          loginFailureOrSuccessOption}) = _$LoginFormStateImpl;

  @override

  ///for showing loading indicator
  bool get isLoggingIn;
  @override

  ///for showing reponses from infrastructure layer
  Option<Either<Failure, Option<Unit>>> get loginFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$LoginFormStateImplCopyWith<_$LoginFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
