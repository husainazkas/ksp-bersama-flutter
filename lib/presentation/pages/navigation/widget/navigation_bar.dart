import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../blocs/auth/auth_bloc.dart';
import '../../../blocs/common/loading/loading_bloc.dart';
import '../../login/login_dialog.dart';

class NavigationBar extends StatelessWidget implements PreferredSizeWidget {
  const NavigationBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).uri.toString();
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
                  isSelected: location == '/',
                  onPressed: () {
                    context.go('/');
                  },
                ),
                _buildButton(
                  context,
                  label: 'Profile',
                  isSelected: location.startsWith('/profile'),
                  onPressed: () {
                    context.go('/profile');
                  },
                ),
                _buildButton(
                  context,
                  label: 'Perkoperasian',
                  isSelected: location.startsWith('/cooperation'),
                  onPressed: () {
                    context.go('/cooperation');
                  },
                ),
                _buildButton(
                  context,
                  label: 'Contact',
                  isSelected: location.startsWith('/contact'),
                  onPressed: () {
                    context.go('/contact');
                  },
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) => state.maybeWhen(
                authenticated: (user) => Material(
                  shape: const CircleBorder(),
                  clipBehavior: Clip.hardEdge,
                  child: PopupMenuButton<int>(
                    tooltip: 'Akun Saya',
                    position: PopupMenuPosition.under,
                    itemBuilder: (_) => [
                      PopupMenuItem(
                        value: 0,
                        child: DefaultTextStyle.merge(
                          style: const TextStyle(fontSize: 14.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                user.displayName ?? 'Anonymous',
                                style: const TextStyle(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              if (user.email != null) Text(user.email!)
                            ],
                          ),
                        ),
                      ),
                      const PopupMenuItem(
                        value: 1,
                        child: Text(
                          'Keluar',
                          style: TextStyle(fontSize: 14.0),
                        ),
                      ),
                    ],
                    onSelected: (value) {
                      if (value == 1) {
                        context
                            .read<AuthBloc>()
                            .add(const AuthEvent.signedOut());
                        context
                            .read<LoadingBloc>()
                            .add(const LoadingEvent.started());
                        Future.delayed(const Duration(milliseconds: 1000), () {
                          context
                              .read<LoadingBloc>()
                              .add(const LoadingEvent.stopped());
                        });
                      }
                    },
                    child: CircleAvatar(
                      backgroundImage: user.photoURL == null
                          ? null
                          : NetworkImage(user.photoURL!),
                      backgroundColor: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ),
                unauthenticated: () => _buildButton(
                  context,
                  label: 'Masuk',
                  onPressed: () {
                    showLoginDialog(context);
                  },
                ),
                orElse: () => const SizedBox(),
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
    bool isSelected = false,
  }) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 20.0,
        ),
        shape: isSelected
            ? RoundedRectangleBorder(
                side: BorderSide(
                  width: 2.0,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(360.0)),
              )
            : null,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: TextStyle(
          color: isSelected ? Theme.of(context).colorScheme.secondary : null,
          fontWeight: FontWeight.w700,
          fontSize: 16.0,
        ),
      ),
    );
  }
}
