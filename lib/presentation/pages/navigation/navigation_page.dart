import 'package:flutter/material.dart' hide NavigationBar;

import 'widget/navigation_bar.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const NavigationBar(),
          Expanded(child: child),
        ],
      ),
    );
  }
}
