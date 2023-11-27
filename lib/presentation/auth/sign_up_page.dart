import 'package:auto_route/annotations.dart';
import 'package:e_commerce/presentation/auth/widgets/sign_up_form.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
          child: Padding(
           padding: EdgeInsets.only(top: 100.0),
           child: SignUpForm(),
      )),
    );
  }
}
