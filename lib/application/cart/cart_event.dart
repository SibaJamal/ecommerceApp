part of 'cart_bloc.dart';

@immutable
abstract class CartEvent {}

class AddToCart extends CartEvent {
  Product product;
  AddToCart({required this.product});
}

class RemoveFromCart extends CartEvent {
  Product product;
  RemoveFromCart({required this.product});
}
