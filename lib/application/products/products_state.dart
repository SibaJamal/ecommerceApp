part of 'products_cubit.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.loading() = Loading;
  const factory ProductState.productLoaded({required List<dynamic> allData}) =
      ProductLoaded;
  const factory ProductState.productError() = ProductError;
}
///hthddf