part of 'cart_bloc.dart';

@immutable
@freezed
class CartState with _$CartState {
  const factory CartState({
    required final Cart cart,
  }) = _CartState;

  factory CartState.initialState() => const CartState(
        cart: Cart(items: []),
      );
}

// @freezed
// class CartState with _$CartState {
//   const factory CartState.initial() = Initial;
//   const factory CartState.loading() = Loading;
//   const factory CartState.categoryLoaded(
//       {required List<dynamic> allCategories}) = CategoryLoaded;
//   const factory CartState.categoryError() = CategoryError;
//   const factory CartState.cartAdded() = cartAdded;
//   const factory CartState.cartAdded() = cartAdded;
// }
