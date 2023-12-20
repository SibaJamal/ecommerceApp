import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_route/annotations.dart';
import 'package:e_commerce/presentation/auth/widgets/sign_in_form.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

@RoutePage()
class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 100.0),
           child: Column(
            children: [
            DefaultTextStyle(
              style: const TextStyle(fontSize: 30, color: primaryColor),
              child: AnimatedTextKit(
                pause: const Duration(milliseconds: 2000),
                repeatForever: true,
                animatedTexts: [
                  TypewriterAnimatedText('Welcome to $appName',
                      speed: const Duration(milliseconds: 100)),
                  TypewriterAnimatedText('Sign In to continue',
                      speed: const Duration(milliseconds: 100)),
                ],
              ),
            ),
            SignInForm(),
          ],
        ),
      )),
    );
  }
}
