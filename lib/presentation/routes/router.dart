import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../injector.dart';
import '../blocs/auth/auth_bloc.dart';
import '../pages/home/home_page.dart';
import '../pages/navigation/navigation_page.dart';
import '../pages/profile/profile_page.dart';
import 'router_refresh_stream.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

final GoRouter router = GoRouter(
  navigatorKey: navigatorKey,
  refreshListenable: RouterRefreshStream([
    FirebaseAuth.instance.authStateChanges(),
    sl<AuthBloc>().stream,
  ]),
  redirect: (context, state) {
    // final authBloc = sl<AuthBloc>();
    return null;
  },
  routes: [
    ShellRoute(
      builder: (context, state, child) => NavigationPage(child: child),
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const HomePage(),
        ),
        GoRoute(
          path: '/profile',
          builder: (context, state) => const ProfilePage(),
        ),
      ],
    ),
  ],
);
