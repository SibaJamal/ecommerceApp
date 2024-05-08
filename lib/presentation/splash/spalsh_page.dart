import 'package:auto_route/auto_route.dart';
import 'package:e_commerce/application/auth/auth_bloc.dart';
import 'package:e_commerce/presentation/routs/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
      state.map(
          initialState: (_){print("@1111111111111111111111111111111111111111111111111111111111111");},
          authenticated: (_){ context.router.replace(const MainRoute()); print("MAINXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");},
          unAuthenticated: (_){ context.router.replace(const SignUpRoute());print("YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY");},
      );
    },
      child: const Scaffold(body: Center(child: CircularProgressIndicator()),),
    );
  }
}
