import 'package:e_commerce/application/category_products/category_products_cubit.dart';
import 'package:e_commerce/domain/core/category.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/products/products_cubit.dart';
import '../../constants.dart';
import '../../injection.dart';
import '../home/widgets/grid_card.dart';

class CategoryPage extends StatefulWidget {
  MyCategory category;
  CategoryPage({required this.category});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CategoryProductsCubit>(),
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: primaryColor,
            ),
          ),
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.all(90.0),
            child: Text(
              widget.category.name,
              style: const TextStyle(color: primaryColor),
            ),
          ),
        ),
        body: Center(
          child: BlocBuilder<CategoryProductsCubit, CategoryProductsState>(
            builder: (context, state) {
              return state.map(
                  initial: (_) => const SizedBox(
                      height: 250,
                      child: Center(child: CircularProgressIndicator())),
                  loading: (_) => const SizedBox(
                      height: 250,
                      child: Center(child: CircularProgressIndicator())),
                  categoryLoaded: (state) {
                    return SizedBox(
                        height: MediaQuery.of(context).size.height * 0.9,
                        child: GridView.builder(
                          itemCount: state.allCategoryItems.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 1,
                            mainAxisSpacing: 1,
                            childAspectRatio: 1 / 1.5,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            return GridCard(state.allCategoryItems[index]);
                          },
                        ));
                  },
                  categoryError: (CategoryError value) {
                    return Center(
                      child: BlocBuilder<ProductsCubit, ProductState>(
                        builder: (context, state) {
                          return state.map(
                              loading: (_) => const SizedBox(
                                  height: 250,
                                  child: Center(
                                      child: CircularProgressIndicator())),
                              productLoaded: (state) {
                                return SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.6,
                                    child: GridView.builder(
                                      itemCount: state.allData.length,
                                      gridDelegate:
                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        crossAxisSpacing: 1,
                                        mainAxisSpacing: 1,
                                        childAspectRatio: 1 / 1.5,
                                      ),
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return GridCard(state.allData[index]);
                                      },
                                    ));
                              },
                              productError: (_) => const SizedBox(
                                  height: 250,
                                  child: Center(child: Text('Error'))));
                        },
                      ),
                    );
                  });
            },
          ),
        ),
      ),
    );
  }
}
