import 'package:e_commerce/application/category_products/category_products_cubit.dart';
import 'package:e_commerce/constants.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/category/category_cubit.dart';
import '../../../domain/core/category.dart';
import '../../../injection.dart';
import '../../core/category_page.dart';

class Cards extends StatelessWidget {
  Cards({required this.category});

  final MyCategory category;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)  => CategoryProductsCubit(name: category.name),
      child: GestureDetector(
        onTap: () {
          print(
              '1gggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg');
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CategoryPage(
                category: category,
              ),
            ),
          );
          print(
              '2gggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg');
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
                child: Text(category.name,
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




