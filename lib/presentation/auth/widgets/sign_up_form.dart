import 'package:e_commerce/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants.dart';


class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessages
              ? AutovalidateMode.onUserInteraction
              : AutovalidateMode.disabled,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Let’s Get Started',
                  style: TextStyle(fontSize: 30),
                ),
                const Text(
                  'Create a new account',
                  style: TextStyle(fontSize: 18, color: textGray),
                ),
                const SizedBox(
                  height: 70,
                ),
                TextFormField(
                  onChanged: (value) {
                    BlocProvider.of<SignInFormBloc>(context)
                        .add(SignInFormEvent.nameChanged(value));
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                  style: const TextStyle(
                    color: textGray,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: "your Name",
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  onChanged: (value) {
                    BlocProvider.of<SignInFormBloc>(context)
                        .add(SignInFormEvent.emailChanged(value));
                  },
                  validator: (_) => context
                      .read<SignInFormBloc>()
                      .state
                      .emailAddress
                      .value
                      .fold(
                          (l) => l.maybeMap(
                                invalidEmailAddress: (_) =>
                                    ' Invalid email address',
                                orElse: () => 'RR',
                              ),
                          (r) => null),
                  style: const TextStyle(
                    color: textGray,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: "your Email",
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  onChanged: (value) {
                    BlocProvider.of<SignInFormBloc>(context)
                        .add(SignInFormEvent.passwordChanged(value));
                  },
                  validator: (_) =>
                      context.read<SignInFormBloc>().state.password.value.fold(
                          (l) => l.maybeMap(
                                shortPassword: (_) => 'Short Password',
                                orElse: () => "null",
                              ),
                          (r) => null),
                  style: const TextStyle(
                    color: textGray,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock_outline_sharp),
                    hintText: 'Password',
                  ),
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  onChanged: (value) {
                    BlocProvider.of<SignInFormBloc>(context)
                        .add(SignInFormEvent.passwordChanged(value));
                  },
                  validator: (value) {
                    final String passwordValue =
                        state.password.value.getOrElse(() => '0');
                    if (value == null || value.isEmpty) {
                      return 'confirm your password';
                    } else if (value != passwordValue) {
                      print(state.password.toString());
                      print(value);
                      return '${passwordValue} identical $value';
                    }
                    return null;
                  },
                  style: const TextStyle(
                    color: textGray,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock_outline_sharp),
                    hintText: "Confirm Password",
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(400, 60),
                  ),
                  onPressed: () async {
                    BlocProvider.of<SignInFormBloc>(context)
                        .add(const SignInFormEvent.signUpPressed());

                    // Navigator.pushReplacement(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const MainPage()),
                    // );
                  },
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Do you have an account? ",
                        style: TextStyle(color: textGray, fontSize: 12)),
                    const SizedBox(
                      height: 16,
                    ),
                    GestureDetector(
                        child: const Text("Sign In",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: primaryColor,
                                fontSize: 12))),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
