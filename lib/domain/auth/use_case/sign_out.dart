import 'package:dartz/dartz.dart';

import '../../core/failures.dart';
import '../../core/no_params.dart';
import '../../core/use_cases.dart';
import '../repositories/i_auth_repository.dart';

final class SignOut extends UseCase<Unit, NoParams> {
  const SignOut(this._authRepository);

  final IAuthRepository _authRepository;

  @override
  Future<Either<Failure, Unit>> processCall(NoParams params) {
    return _authRepository.logout().then((_) => const Right(unit));
  }
}
