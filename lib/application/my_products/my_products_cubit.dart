import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:injectable/injectable.dart';
part 'my_products_state.dart';
part 'my_products_cubit.freezed.dart';

@injectable
class MyProductsCubit extends Cubit<MyProductsState> {
  MyProductsCubit()
      : super(const MyProductsState.initial()) {
    getMyProduct;
  }
  void getMyProduct() async {
    // List<dynamic> ss = await authenticationHelper.getUserPosts();
    // emit(MyProductsState.productLoaded(allMyData: ss));
    // if (ss == []) {
    //   emit(const MyProductsState.empty());
    // } else {
    //   emit(MyProductsState.productLoaded(allMyData: ss));
    // }
  }
}
