import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import '../../domain/products/product.dart';
import '../../infrastructure/cart/cart_repository.dart';
import 'package:injectable/injectable.dart';
part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

@injectable
class CartBloc extends Bloc<CartEvent, CartState> {
  CartRepository cartRepository;

  CartBloc(this.cartRepository) : super(CartState.initialState()) {
    on<CartEvent>((event, emit) async {
      if (event is AddToCart) {
        List<Product> items = List<Product>.from(state.items);
        items.add(event.product);
        emit(CartState(items: items));
      }
      if (event is RemoveFromCart) {
        List<Product> items = List<Product>.from(state.items);
        items.add(event.product);
        emit(CartState(items: items));
      }
    });
    // on<AddToCart>(_addTo);
    // on<RemoveFromCart>(_removeFrom);
  }

  // void _addTo(AddToCart event, Emitter<CartState> emit) {
  //   state.items.add(event.product);
  //   print('FuckFuckFuckFuckFuckFuckFuckFuckFuckFuckFuck');
  // }
  //
  // void _removeFrom(RemoveFromCart event, Emitter<CartState> emit) {
  //   state.items.remove(event.product);
  //   print('FuckFuckFuckFuckFuckFuckFuckFuckFuckFuckFuck');
  // }
}
