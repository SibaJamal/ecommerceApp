part of 'sign_in_form_bloc.dart';

@immutable
@freezed
class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    required EmailAddress emailAddress,
    required Password password,
    required Password confirm,
    required String name,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _SignInFormState;

  factory SignInFormState.initialState() => SignInFormState(
        emailAddress: EmailAddress(''),
        password: Password(''),
        confirm: Password(''),
        name: '',
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
