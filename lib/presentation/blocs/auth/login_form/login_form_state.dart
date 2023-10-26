part of 'login_form_bloc.dart';

@freezed
class LoginFormState with _$LoginFormState {
  const factory LoginFormState({
    ///for showing loading indicator
    required bool isLoggingIn,

    ///for showing reponses from infrastructure layer
    required Option<Either<Failure, Option<Unit>>> loginFailureOrSuccessOption,
  }) = _LoginFormState;

  factory LoginFormState.initial() => const LoginFormState(
        isLoggingIn: false,
        loginFailureOrSuccessOption: None(),
      );
}
