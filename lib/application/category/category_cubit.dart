import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import '../../domain/products/fetch_data_failure.dart';
import '../../infrastructure/products/products_data_repository.dart';
import 'package:injectable/injectable.dart';

part 'category_state.dart';
part 'category_cubit.freezed.dart';

@singleton
class CategoryCubit extends Cubit<CategoryState> {
  ProductsRepository productsRepository;

  CategoryCubit(this.productsRepository)
      : super(const CategoryState.loading()) {
    getCategories();
  }

  void getCategories() async {
    Either<FetchDataFailure,List<dynamic>> ss = await productsRepository.getCategories();
    if (ss.isRight()){
      List<dynamic> ww = ss.getOrElse(() => []);
      emit(CategoryState.categoryLoaded(allCategories: ww));
    } else {
      emit(const CategoryState.categoryError());
    }
  }
}
