import 'package:e_commerce/domain/auth/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:e_commerce/domain/auth/value_objects.dart';
import 'package:firebase_auth/firebase_auth.dart';


abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {required EmailAddress emailAddress,
      required Password password,
      required Password confirmPassword,
      required String name});

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required EmailAddress emailAddress,
      required Password password,
      String? name});

  Future<Option<User>> getSignedInUser();

  Future<void> signOut();
  Future<Either<AuthFailure,Unit>> signInWithGoogle ();

}
