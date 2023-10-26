import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../domain/core/utils.dart';
import '../../../blocs/auth/auth_bloc.dart';
import '../../../blocs/common/loading/loading_bloc.dart';
import '../../login/login_dialog.dart';

class NavigationBar extends StatelessWidget implements PreferredSizeWidget {
  const NavigationBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Stack(
        alignment: AlignmentDirectional.centerStart,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildButton(
                  context,
                  label: 'Beranda',
                  onPressed: () {
                    context.go('/');
                  },
                ),
                _buildButton(
                  context,
                  label: 'Laporan Keuangan',
                  onPressed: () {
                    context.go('/financial-report');
                  },
                ),
                _buildButton(
                  context,
                  label: 'Tentang Kami',
                  onPressed: () {
                    context.go('/about');
                  },
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) => _buildButton(
                context,
                label: state.maybeWhen(
                  authenticated: (user) =>
                      '${user.displayName?.truncate(10) ?? ''}\nKeluar'.trim(),
                  orElse: () => 'Masuk',
                ),
                onPressed: () {
                  context.read<AuthBloc>().state.maybeMap(
                        authenticated: (_) {
                          context
                              .read<AuthBloc>()
                              .add(const AuthEvent.signedOut());
                          context
                              .read<LoadingBloc>()
                              .add(const LoadingEvent.started());
                          Future.delayed(const Duration(milliseconds: 1000),
                              () {
                            context
                                .read<LoadingBloc>()
                                .add(const LoadingEvent.stopped());
                          });
                        },
                        orElse: () => showLoginDialog(context),
                      );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton(
    BuildContext context, {
    VoidCallback? onPressed,
    required String label,
  }) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 20.0,
        ),
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: const TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 16.0,
        ),
      ),
    );
  }
}
