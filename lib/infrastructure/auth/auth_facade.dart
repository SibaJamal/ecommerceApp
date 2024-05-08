import 'package:dartz/dartz.dart';
import 'package:e_commerce/domain/auth/auth_failure.dart';
import 'package:e_commerce/domain/auth/i_auth_facade.dart';
import 'package:e_commerce/domain/auth/value_objects.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';


@LazySingleton(as: IAuthFacade)
class AuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;


  AuthFacade(this._firebaseAuth, this._googleSignIn);

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {required EmailAddress emailAddress,
      required Password password,
      required Password confirmPassword,
      required String name}) async {
    String emailStr = emailAddress.getOrCrash();
    String passwordStr = password.getOrCrash();
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailStr,
        password: passwordStr,
      );
      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
        return left(const AuthFailure.emailAddressAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }


  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required EmailAddress emailAddress,
      required Password password,
      String? name}) async {
    String emailStr = emailAddress.getOrCrash();
    String passwordStr = password.getOrCrash();
    try {
      await _firebaseAuth.signInWithEmailAndPassword(email:emailStr, password: passwordStr);
      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_WRONG_PASSWORD' || e.code == 'ERROR_USER_NOT_FOUND')
      {
        return left(const AuthFailure.invalidEmailAddressAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());}
    }
  }

  @override
  Future<void> signOut() =>
  Future.wait([
      _googleSignIn.signOut(),
      _firebaseAuth.signOut()]);


  @override
  Future<Option<User>> getSignedInUser() async {
    final user = _firebaseAuth.currentUser;
    return optionOf(user);
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
  try{
    final googleUser= await _googleSignIn.signIn();
    if (googleUser== null) {return left(const AuthFailure.canceledByUser());}
    final googleAuthentication = await googleUser.authentication;
    final authCredential = GoogleAuthProvider.credential(idToken:googleAuthentication.idToken ,accessToken:googleAuthentication.accessToken);
    return _firebaseAuth.signInWithCredential(authCredential).then((r) => right(unit));
  }  on PlatformException catch (_){
  return left(const AuthFailure.serverError());
  }
    
  }



}
