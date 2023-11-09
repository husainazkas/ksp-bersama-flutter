import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavigationEndDrawer extends StatelessWidget {
  const NavigationEndDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).uri.toString();
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 60.0,
        ),
        child: Column(
          children: [
            _buildButton(
              context,
              label: 'Beranda',
              onPressed: () {
                context.pop();
                context.go('/');
              },
              isSelected: location == '/',
            ),
            const SizedBox(height: 20.0),
            _buildButton(
              context,
              label: 'Pinjaman',
              onPressed: () {
                context.pop();
                context.go('/loan');
              },
              isSelected: location.startsWith('/loan'),
            ),
            const SizedBox(height: 20.0),
            _buildButton(
              context,
              label: 'Simpanan',
              onPressed: () {
                context.pop();
                context.go('/saving');
              },
              isSelected: location.startsWith('/saving'),
            ),
            const SizedBox(height: 20.0),
            _buildButton(
              context,
              label: 'Tentang Kami',
              onPressed: () {
                context.pop();
                context.go('/about-us');
              },
              isSelected: location.startsWith('/about-us'),
            ),
            const SizedBox(height: 20.0),
            _buildButton(
              context,
              label: 'Hubungi Kami',
              onPressed: () {
                context.pop();
                context.go('/contact-us');
              },
              isSelected: location.startsWith('/contact-us'),
            ),
          ],
        ),
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
      ),
      onPressed: onPressed,
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: isSelected
              ? Border(
                  bottom: BorderSide(
                    width: 2.0,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                )
              : null,
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
            color: Theme.of(context).colorScheme.onBackground,
          ),
        ),
      ),
    );
  }
}
