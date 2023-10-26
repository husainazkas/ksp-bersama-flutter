import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/auth/entities/user.dart';
import '../../../domain/auth/use_case/get_user_data.dart';
import '../../../domain/auth/use_case/sign_out.dart';
import '../../../domain/core/no_params.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(
    this._getUserData,
    this._signOut,
  ) : super(const AuthState.initial()) {
    on<AuthCheckRequested>(_onAuthCheckRequested);
    on<SignedOut>(_onSignedOut, transformer: droppable());
  }

  final GetUserData _getUserData;
  final SignOut _signOut;

  Future<void> _onAuthCheckRequested(
      AuthCheckRequested event, Emitter<AuthState> emit) async {
    final response = await _getUserData(const NoParams());

    emit(response.fold(
      (l) => const AuthState.unauthenticated(),
      (r) => r.fold(
        () => const AuthState.unauthenticated(),
        (a) => AuthState.authenticated(a),
      ),
    ));
  }

  Future<void> _onSignedOut(SignedOut event, Emitter<AuthState> emit) async {
    final result = await _signOut(const NoParams());
    emit(result.fold(
      (failure) => state,
      (success) => const AuthState.unauthenticated(),
    ));
  }
}
