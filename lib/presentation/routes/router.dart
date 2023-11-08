import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../injector.dart';
import '../blocs/auth/auth_bloc.dart';
import '../pages/about_us/about_us_page.dart';
import '../pages/contact_us/contact_us_page.dart';
import '../pages/home/home_page.dart';
import '../pages/navigation/navigation_page.dart';
import '../pages/loan/loan_page.dart';
import '../pages/saving/saving_page.dart';
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
          path: '/loan',
          builder: (context, state) => const LoanPage(),
        ),
        GoRoute(
          path: '/saving',
          builder: (context, state) => const SavingPage(),
        ),
        GoRoute(
          path: '/about-us',
          builder: (context, state) => const AboutUsPage(),
        ),
        GoRoute(
          path: '/contact-us',
          builder: (context, state) => const ContactUs(),
        ),
      ],
    ),
  ],
);
