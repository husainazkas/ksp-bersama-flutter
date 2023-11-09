import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/auth/use_case/login_with_google.dart';
import '../../../../domain/core/failures.dart';
import '../../../../domain/core/no_params.dart';

part 'login_form_event.dart';
part 'login_form_state.dart';
part 'login_form_bloc.freezed.dart';

class LoginFormBloc extends Bloc<LoginFormEvent, LoginFormState> {
  final LoginWithGoogle _loginWithGoogle;

  LoginFormBloc(this._loginWithGoogle) : super(LoginFormState.initial()) {
    on<LoginFormLoggedIn>(_onLoggedIn, transformer: droppable());
  }

  Future<void> _onLoggedIn(
      LoginFormLoggedIn event, Emitter<LoginFormState> emit) async {
    emit(state.copyWith(
      isLoggingIn: true,
      loginFailureOrSuccessOption: const None(),
    ));

    final loginFailureOrSuccess = await _loginWithGoogle(const NoParams());

    emit(state.copyWith(
      isLoggingIn: false,
      loginFailureOrSuccessOption: optionOf(loginFailureOrSuccess),
    ));
  }
}
