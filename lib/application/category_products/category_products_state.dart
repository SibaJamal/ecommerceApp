part of 'category_products_cubit.dart';

@freezed
class CategoryProductsState with _$CategoryProductsState {
  const factory CategoryProductsState.initial() = Initial;
  const factory CategoryProductsState.loading() = Loading;
  const factory CategoryProductsState.categoryLoaded(
      {required List<dynamic> allCategoryItems}) = CategoryLoaded;
  const factory CategoryProductsState.categoryError() = CategoryError;
}
