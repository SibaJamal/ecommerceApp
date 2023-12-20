part of 'auth_bloc.dart';

@immutable
@freezed
class AuthState with _$AuthState {
  const factory AuthState.initialState() = InitialState;
  const factory AuthState.authenticated({required User user}) = Authenticated;
  const factory AuthState.unAuthenticated() = UnAuthenticated;
}
