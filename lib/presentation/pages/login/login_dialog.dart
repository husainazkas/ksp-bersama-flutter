import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:go_router/go_router.dart';

import '../../../injector.dart';
import '../../blocs/auth/auth_bloc.dart';
import '../../blocs/auth/login_form/login_form_bloc.dart';
import '../../blocs/common/loading/loading_bloc.dart';
import '../../widgets/snackbars.dart';

Future<bool?> showLoginDialog(BuildContext context) {
  return showDialog<bool>(
    context: context,
    barrierDismissible: false,
    builder: (context) => BlocProvider<LoginFormBloc>(
      create: (_) => sl(),
      child: const _LoginDialog(),
    ),
  );
}

class _LoginDialog extends StatelessWidget {
  const _LoginDialog();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginFormBloc, LoginFormState>(
      listener: (context, state) {
        if (state.isLoggingIn) {
          context.read<LoadingBloc>().add(const LoadingEvent.started());
        } else {
          context.read<LoadingBloc>().add(const LoadingEvent.stopped());
        }

        state.loginFailureOrSuccessOption.fold(
          () => null,
          (a) {
            a.fold(
              (l) => ScaffoldMessenger.of(context).showSnackBar(FailureSnackBar(
                message: 'Terjadi error tidak terduga',
              )),
              (r) => r.fold(
                () => ScaffoldMessenger.of(context)
                    .showSnackBar(InformationSnackBar(
                  message: 'Masuk dengan Google dibatalkan',
                )),
                (a) {
                  ScaffoldMessenger.of(context).showSnackBar(SuccessSnackBar(
                    message: 'Berhasil masuk ke Google',
                  ));
                  context
                      .read<AuthBloc>()
                      .add(const AuthEvent.authCheckRequested());
                },
              ),
            );
            context.pop();
          },
        );
      },
      builder: (context, state) => IgnorePointer(
        ignoring: state.isLoggingIn,
        child: Dialog(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.sizeOf(context).width / 2.5,
            ),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Masuk ke Akun',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 12.0),
                          Text(
                            'Untuk memulai menggunakan layanan kami',
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      CloseButton(
                        color: Theme.of(context).colorScheme.outline,
                      ),
                    ],
                  ),
                  const SizedBox(height: 24.0),
                  SignInButton(
                    Buttons.Google,
                    onPressed: () {
                      context
                          .read<LoginFormBloc>()
                          .add(const LoginFormEvent.loggedIn());
                    },
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    text: 'Masuk dengan Google',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
