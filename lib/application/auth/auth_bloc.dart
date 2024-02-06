import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:e_commerce/domain/auth/i_auth_facade.dart';
import 'package:injectable/injectable.dart';
part 'auth_event.dart';
part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@singleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade authFacade;

  AuthBloc(this.authFacade) : super(const AuthState.initialState()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        authCheckedRequested: (e) async {
          final optionUser = await authFacade.getSignedInUser();
          optionUser.fold(() => emit(const AuthState.unAuthenticated()),
              (e) => emit(AuthState.authenticated(user: e)));
        },
        signedOut: (e) async {
          await authFacade.signOut();
          emit(const AuthState.unAuthenticated());
        },
      );
    });
  }
}
