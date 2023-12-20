part of 'my_products_cubit.dart';

@freezed
class MyProductsState with _$MyProductsState {
  const factory MyProductsState.initial() = Initial;
  const factory MyProductsState.loading() = Loading;
  const factory MyProductsState.productLoaded(
      {required List<dynamic> allMyData}) = ProductLoaded;
  const factory MyProductsState.productError() = ProductError;
  const factory MyProductsState.empty() = Empty;
}
