import 'package:dartz/dartz.dart';

import '../../core/failures.dart';
import '../../core/no_params.dart';
import '../../core/use_cases.dart';
import '../entities/user.dart';
import '../repositories/i_auth_repository.dart';

final class GetUserData extends UseCase<Option<User>, NoParams> {
  const GetUserData(this._authRepository);

  final IAuthRepository _authRepository;

  @override
  Future<Either<Failure, Option<User>>> processCall(NoParams params) {
    return _authRepository.getUserData().then(right);
  }
}
