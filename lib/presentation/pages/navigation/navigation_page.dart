import 'package:flutter/material.dart' hide NavigationBar;
import 'package:go_router/go_router.dart';

import 'widget/footer.dart';
import 'widget/navigation_bar.dart';
import 'widget/navigation_end_drawer.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key, required this.child});

  final Widget child;

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).uri.toString();
    return Scaffold(
      endDrawer: const NavigationEndDrawer(),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          NavigationBar(
            scrollController: _scrollController,
            isAlwaysCollapsed: location.startsWith('/saving'),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: widget.child,
          ),
          if (!location.startsWith('/contact-us'))
            const SliverToBoxAdapter(
              child: Footer(),
            ),
        ],
      ),
    );
  }
}
