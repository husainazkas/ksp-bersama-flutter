import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../injector.dart';
import 'blocs/auth/auth_bloc.dart';
import 'blocs/common/loading/loading_bloc.dart';
import 'resources/theme.dart';
import 'routes/router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          lazy: false,
          create: (context) => sl()..add(const AuthEvent.authCheckRequested()),
        ),
        BlocProvider<LoadingBloc>(
          lazy: false,
          create: (context) => sl(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Kelompok 10 - Koperasi',
        routeInformationParser: router.routeInformationParser,
        routeInformationProvider: router.routeInformationProvider,
        routerDelegate: router.routerDelegate,
        theme: AppTheme.lightTheme,
        themeMode: ThemeMode.light,
        builder: (context, child) => BlocBuilder<LoadingBloc, LoadingState>(
          builder: (context, state) => Stack(
            children: [
              child ?? const SizedBox(),
              state.when(
                running: (_) => LinearProgressIndicator(
                  color: Theme.of(context).colorScheme.primary,
                  backgroundColor:
                      Theme.of(context).colorScheme.primary.withOpacity(0.5),
                  minHeight: 6.0,
                ),
                stopped: () => const SizedBox(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
