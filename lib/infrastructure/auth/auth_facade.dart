import 'package:dartz/dartz.dart';
import 'package:e_commerce/domain/auth/auth_failure.dart';
import 'package:e_commerce/domain/auth/i_auth_facade.dart';
import 'package:e_commerce/domain/auth/value_objects.dart';
import 'package:e_commerce/infrastructure/auth/authentication_data_provider.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/User.dart';

@LazySingleton(as: IAuthFacade)
class AuthFacade implements IAuthFacade {
  final AuthenticationHelper authenticationHelper;

  AuthFacade(this.authenticationHelper);

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {required EmailAddress emailAddress,
      required Password password,
      required Password confirmPassword,
      required String name}) async {
    String emailStr = emailAddress.getOrCrash();
    String passwordStr = password.getOrCrash();
    String confirmPasswordStr = confirmPassword.getOrCrash();
    try {
      print(
          "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!@@@@");
      await authenticationHelper.signUp(
        name: name,
        email: emailStr,
        password: passwordStr,
        confirmPassword: confirmPasswordStr,
      );
      print(
          "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!@@@@");
      return right(unit);
    } on AuthFailure catch (_) {
        return left(const AuthFailure.serverError());
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
      await authenticationHelper.signIn(emailStr, passwordStr);
      return right(unit);
    } on AuthFailure catch (_) {
        return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() {
    authenticationHelper.signOut();
    throw UnimplementedError();
  }

  @override
  Future<Option<User>> getSignedInUser() async {
    var data = await authenticationHelper.getUser();
    User user = User.fromJson(data);
    return optionOf(user);
  }
}
