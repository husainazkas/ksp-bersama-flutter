import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'domain/auth/repositories/i_auth_repository.dart';
import 'domain/auth/use_case/get_user_data.dart';
import 'domain/auth/use_case/login_with_google.dart';
import 'domain/auth/use_case/sign_out.dart';
import 'infrastructure/auth/repositories/auth_repository.dart';
import 'infrastructure/core/db_hive.dart';
import 'presentation/blocs/auth/auth_bloc.dart';
import 'presentation/blocs/auth/login_form/login_form_bloc.dart';
import 'presentation/blocs/common/loading/loading_bloc.dart';

final sl = GetIt.instance;

Future<void> initLocator() async {
  await DbHive.init();

  _initCommonFeature();
  _initAuthFeature();
}

void _initCommonFeature() {
  sl.registerLazySingleton(() => LoadingBloc());
}

void _initAuthFeature() {
  // sl.registerLazySingleton<IAuthLocalDatasource>(() => AuthLocalDatasource());
  sl.registerLazySingleton(() => GoogleSignIn.standard());

  sl.registerLazySingleton<IAuthRepository>(
    () => AuthRepository(sl(), FirebaseAuth.instance),
  );

  sl.registerLazySingleton(() => LoginWithGoogle(sl()));
  sl.registerLazySingleton(() => GetUserData(sl()));
  sl.registerLazySingleton(() => SignOut(sl()));

  sl.registerLazySingleton(() => AuthBloc(sl(), sl()));
  sl.registerFactory(() => LoginFormBloc(sl()));
}
