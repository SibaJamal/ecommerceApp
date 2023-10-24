import 'package:e_commerce/application/auth/auth_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(listener: (context, state) {
      // state.map(initialState: Sign, authenticated: authenticated, unAuthenticated: unAuthenticated)
    });
  }
}
