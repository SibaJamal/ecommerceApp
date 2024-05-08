import 'package:auto_route/auto_route.dart';
import 'package:e_commerce/application/category_products/category_products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../constants.dart';
import '../home/widgets/grid_card.dart';

@RoutePage()
class CategoryPage extends StatelessWidget {
  String category;
  CategoryPage({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CategoryProductsCubit(name: category),
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              context.popRoute();
            },
            child: const Icon(
              Icons.arrow_back,
              color: primaryColor,
            ),
          ),
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.all(90.0),
            child: Text(
              category,
              style: const TextStyle(color: primaryColor),
            ),
          ),
        ),
        body: BlocBuilder<CategoryProductsCubit, CategoryProductsState>(
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
                  return const Center(
                   child: Text('ERROR'),
                  );
                }
                );
          },
        ),
      ),
    );
  }
}
