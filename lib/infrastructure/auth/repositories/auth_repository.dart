import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../domain/auth/repositories/i_auth_repository.dart';
import '../../../domain/core/failures.dart';

class AuthRepository implements IAuthRepository {
  const AuthRepository(
    this._googleSignIn,
    this._firebaseAuth,
  );

  final GoogleSignIn _googleSignIn;
  final FirebaseAuth _firebaseAuth;

  @override
  Future<Option<User>> getUserData() async {
    return optionOf(_firebaseAuth.currentUser);
  }

  @override
  Future<Option<Unit>> loginWithGoogle() async {
    GoogleSignInAccount? googleAccount;
    try {
      googleAccount = await _googleSignIn.signIn();
    } catch (e) {
      if (e.toString() != 'popup_closed') rethrow;
    }
    if (googleAccount == null) return const None();

    final googleAuth = await googleAccount.authentication;
    final credential = GoogleAuthProvider.credential(
      idToken: googleAuth.idToken,
      accessToken: googleAuth.accessToken,
    );

    final user = await _firebaseAuth.signInWithCredential(credential);

    if (user.user == null) {
      throw const Failure.firebaseException(
        message: 'Firebase Sign In Failure: There is something wrong.',
      );
    }

    return const Some(unit);
  }

  @override
  Future<void> logout() async {
    await _firebaseAuth.signOut();
    await _googleSignIn.signOut();
    await _googleSignIn.disconnect();
  }
}
