import 'package:auto_route/auto_route.dart';
import 'package:e_commerce/constants.dart';
import 'package:e_commerce/presentation/auth/sign_up_page.dart';
import 'package:e_commerce/presentation/core/main_page.dart';
import 'package:e_commerce/presentation/routs/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/sign_in_form/sign_in_form_bloc.dart';

class SignInForm extends StatelessWidget {
  SignInForm({Key? key}) : super(key: key);

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
                // const Text('Sign In to continue',style: TextStyle(fontSize:20),),
                const SizedBox(
                  height: 70,
                ),
                // TextField(),
                TextFormField(
                  onChanged: (value) {
                    BlocProvider.of<SignInFormBloc>(context)
                        .add(SignInFormEvent.emailChanged(value));
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
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
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
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
                    hintText: 'Password',
                  ),
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  // style: ElevatedButton.styleFrom(
                  //   minimumSize: const Size(400, 60),
                  // ),
                  ///todo : fix this router
                  onPressed: () async {
                    // context
                    //     .read<SignInFormBloc>()
                    //     .add(const SignInFormEvent.signInPressed());
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const MainPage()),
                    );
                  },
                  child: const Text(
                    'Sign In',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.all(16.0),
                //   child: Row(
                //       crossAxisAlignment: CrossAxisAlignment.center,
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: const [
                //         Expanded(
                //           child: Divider(
                //             color: secondaryColor,
                //             thickness: 2,
                //             endIndent: 10,
                //           ),
                //         ),
                //         Center(
                //             child: Text(
                //           'OR',
                //           style: TextStyle(
                //               fontWeight: FontWeight.bold, color: textGray),
                //         )),
                //         Expanded(
                //           child: Divider(
                //             color: secondaryColor,
                //             thickness: 2,
                //             indent: 10,
                //           ),
                //         ),
                //       ]),
                // ),
                // Container(
                //   width: 400,
                //   height: 60,
                //   decoration: BoxDecoration(
                //     borderRadius: const BorderRadius.all(Radius.circular(5)),
                //     border: Border.all(color: textGray),
                //   ),
                //   child: Padding(
                //     padding: const EdgeInsets.all(16.0),
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.start,
                //       children: const [
                //         ///Todo add the logo
                //         // ImageIcon(),
                //         SizedBox(
                //           width: 60,
                //         ),
                //         Text(
                //           "Sign In with google",
                //           style: TextStyle(
                //               fontWeight: FontWeight.bold, color: textGray),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                const SizedBox(
                  height: 200,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: GestureDetector(
                      child: const Text("Forgot Password?",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: primaryColor,
                              fontSize: 12))),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don’t have a account? ",
                        style: TextStyle(color: textGray, fontSize: 12)),
                    const SizedBox(
                      height: 16,
                    ),
                    GestureDetector(
                        onTap: () {
                          context.router.push(const SignUpRoute());
                        },
                        child: const Text("Register",
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
