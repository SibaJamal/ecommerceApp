import 'package:e_commerce/application/auth/auth_bloc.dart';
import 'package:e_commerce/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:e_commerce/application/cart/cart_bloc.dart';
import 'package:e_commerce/application/category/category_cubit.dart';
import 'package:e_commerce/application/my_products/my_products_cubit.dart';
import 'package:e_commerce/application/products/products_cubit.dart';
import 'package:e_commerce/application/search/search_bloc.dart';
import 'package:e_commerce/injection.dart';
import 'package:e_commerce/presentation/auth/sign_in_page.dart';
import 'package:e_commerce/presentation/core/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/category_products/category_products_cubit.dart';
import '../../application/counter_cubit.dart';
import '../../constants.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<CounterCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<ProductsCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<SignInFormBloc>(),
        ),
        BlocProvider<SearchBloc>(
          lazy: true,
          create: (context) => getIt<SearchBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<MyProductsCubit>(),
        ),
        BlocProvider(
          lazy: true,
          create: (context) => getIt<AuthBloc>(),
        ),
        BlocProvider(
          lazy: true,
          create: (context) => getIt<CartBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<CategoryCubit>(),
        ),
        // BlocProvider(
        //   create: (context) => getIt<CategoryProductsCubit>(),
        // )
      ],
      child: MaterialApp(
        title: 'Notes',
        debugShowCheckedModeBanner: false,
        home: const MainPage(),
        theme: ThemeData(
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          primaryColor: primaryColor,
          textTheme: const TextTheme(
              displayLarge:
                  TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
              titleLarge: TextStyle(
                fontSize: 16.0,
              ),
              bodyMedium: TextStyle(fontSize: 14.0)),
          inputDecorationTheme: InputDecorationTheme(
            hintStyle: const TextStyle(
              color: textGray,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ),
    );
  }
}
