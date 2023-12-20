part of 'cart_bloc.dart';


@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.addToCart({required Product product}) = _AddToCart;
  const factory CartEvent.removeFromCart({required Product product}) = _RemoveFromCart;
}
