import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:e_commerce/domain/products/fetch_data_failure.dart';
import 'package:injectable/injectable.dart';
import '../../infrastructure/products/products_data_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'products_state.dart';
part 'products_cubit.freezed.dart';

@singleton
class ProductsCubit extends Cubit<ProductState> {
  ProductsRepository productsRepository;

  ProductsCubit(this.productsRepository)
      : super(const ProductState.loading()) {
    getAll();
  }

  void getAll() async {
      Either<FetchDataFailure,List<dynamic>> ss = await productsRepository.getAllProducts();
      if (ss.isRight()) {
        List<dynamic> ww = ss.getOrElse(() => []);
        emit(ProductState.productLoaded(allData: ww));
      } else {emit(const ProductState.productError());}
  }
}
