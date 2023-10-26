import 'package:dartz/dartz.dart';

import '../../core/failures.dart';
import '../../core/no_params.dart';
import '../../core/use_cases.dart';
import '../repositories/i_auth_repository.dart';

final class LoginWithGoogle extends UseCase<Option<Unit>, NoParams> {
  LoginWithGoogle(this._authRepository);

  final IAuthRepository _authRepository;

  @override
  Future<Either<Failure, Option<Unit>>> processCall(NoParams params) {
    return _authRepository.loginWithGoogle().then(right);
  }
}
