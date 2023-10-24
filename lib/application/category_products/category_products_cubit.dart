import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../../domain/products/fetch_data_failure.dart';
import '../../infrastructure/products/products_data_repository.dart';

part 'category_products_state.dart';
part 'category_products_cubit.freezed.dart';


class CategoryProductsCubit extends Cubit<CategoryProductsState> {
  String name;
  late ProductsRepository productsRepository;
  CategoryProductsCubit({required this.name})
      : super(const CategoryProductsState.initial()) {
    productsRepository = GetIt.instance<ProductsRepository>();
    getCategoryItems(name);
    ///todo uncomment it
  }

  void getCategoryItems(String categoryTitle) async {
    Either<FetchDataFailure,List<dynamic>> ss = await productsRepository.getCategoryProducts(categoryTitle);
    if (ss.isRight()) {
      List<dynamic> ww = ss.getOrElse(() => []);
      emit(CategoryProductsState.categoryLoaded(allCategoryItems: ww));
    } else {
      emit(const CategoryProductsState.categoryError());
    }

    /// include the rest of the states
    /// include the rest of the states
  }
}
