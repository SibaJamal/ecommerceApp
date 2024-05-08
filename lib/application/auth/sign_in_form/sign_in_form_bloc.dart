import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/auth/auth_failure.dart';
import '../../../domain/auth/i_auth_facade.dart';
import '../../../domain/auth/value_objects.dart';

part 'sign_in_form_bloc.freezed.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

@singleton
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;

  SignInFormBloc(this._authFacade) : super(SignInFormState.initialState()) {
    on<SignInFormEvent>((event, emit) async {
      await event.map(
        nameChanged: (e) {
          emit(state.copyWith(
            name: e.name,
            authFailureOrSuccessOption: none(),
          ));
        },
        emailChanged: (e) async {
          emit(state.copyWith(
            emailAddress: EmailAddress(e.emailStr),
            authFailureOrSuccessOption: none(),
          ));
        },

        passwordChanged: (e) async {
          emit(state.copyWith(
            password: Password(e.passwordStr),
            authFailureOrSuccessOption: none(),
          ));
        },
        confirmPasswordChanged: (e) {
          emit(state.copyWith(
            confirm: Password(e.confirmStr),
            authFailureOrSuccessOption: none(),
          ));
          },
        signUpPressed: (e) async => await _signUpPressed(event, emit),

        signInPressed: (e) async => await _signInPressed(event, emit),


        // signInWithGooglePressed: (e) async {
        //   emit(state.copyWith(
        //     isSubmitting: true,
        //     authFailureOrSuccessOption: none(),
        //   ));
        // },
      );
    });
  }
  _signUpPressed(SignInFormEvent event, Emitter<SignInFormState> emit) async {
    Either<AuthFailure, Unit>? failureOrSuccess;

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();
    final isConfirmedValid = state.confirm.isValid();
    if (isEmailValid && isPasswordValid && isConfirmedValid && state.confirm==state.password ) {

      emit(state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      ));

      failureOrSuccess = await _authFacade.registerWithEmailAndPassword(
        emailAddress: state.emailAddress,
        password: state.password,
        confirmPassword: state.confirm,
        name: state.name,
      );
    }
    print('*********************');
    print(failureOrSuccess);
    print('*********************');

    emit(state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    ));
  }

  _signInPressed(SignInFormEvent event, Emitter<SignInFormState> emit) async {
    Either<AuthFailure, Unit>? failureOrSuccess;

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      emit(state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      ));

      failureOrSuccess = await _authFacade.signInWithEmailAndPassword(
        emailAddress: state.emailAddress,
        password: state.password,
      );
    }
    emit(state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    ));
  }
}

// Future<void> _performActionOnAuthFacadeWithEmailAndPassword(
//     Future<Either<AuthFailure, Unit>> Function(
//         {required EmailAddress emailAddress,
//         required Password password,
//         String name})
//     forwardedCall,
//     ) async {
//   Either<AuthFailure, Unit>? failureOrSuccess;
//
//   final isEmailValid = state.emailAddress.isValid();
//   final isPasswordValid = state.password.isValid();
//
//   if (isEmailValid && isPasswordValid) {
//     emit(state.copyWith(
//       isSubmitting: true,
//       authFailureOrSuccessOption: none(),
//     ));
//
//     failureOrSuccess = await forwardedCall(
//       emailAddress: state.emailAddress,
//       password: state.password,
//     );
//   }
//   emit(state.copyWith(
//     isSubmitting: false,
//     showErrorMessages: true,
//     authFailureOrSuccessOption: optionOf(failureOrSuccess),
//   ));
// }
