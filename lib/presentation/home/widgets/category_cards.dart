import 'package:auto_route/auto_route.dart';
import 'package:e_commerce/application/category_products/category_products_cubit.dart';
import 'package:e_commerce/constants.dart';
import 'package:e_commerce/presentation/routs/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Cards extends StatelessWidget {
  final String category;
  const Cards({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)  => CategoryProductsCubit(name: category),
      child: GestureDetector(
        onTap: () {
          context.router.push(CategoryRoute(category:category));
        },
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            height: 36,
            width: 80,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                border: Border.all(
                  color: primaryColor,
                  width: 2,
                  style: BorderStyle.solid,
                )),
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: Center(
                child: Text(category,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: primaryColor,
                      fontSize: 14,
                    )),
              ),
            ),
          ),
        ),
      ),
    );
  }
}




