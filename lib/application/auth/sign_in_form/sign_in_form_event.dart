part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.emailChanged(String emailStr) = EmailChanged;
  const factory SignInFormEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
  const factory SignInFormEvent.confirmPasswordChanged(String confirmStr) =confirmPasswordChanged;
  const factory SignInFormEvent.signUpPressed() = SignUpPressed;
  const factory SignInFormEvent.signInPressed() = SignInPressed;
  const factory SignInFormEvent.nameChanged(String name) = NameChanged;
  // const factory SignInFormEvent.signInWithGooglePressed() = SignInWithGooglePressed;
  // const factory SignInFormEvent.forgetPasswordPressed() = ForgetPasswordPressed;

  ///Todo remove this event
}
