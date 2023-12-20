part of 'category_cubit.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.loading() = Loading;
  const factory CategoryState.categoryLoaded(
      {required List<dynamic> allCategories}) = CategoryLoaded;
  const factory CategoryState.categoryError() = CategoryError;
}
