import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/cart/cart.dart';
import '../../domain/products/product.dart';
import 'package:injectable/injectable.dart';
part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

@injectable
class CartBloc extends Bloc<CartEvent, CartState> {

  CartBloc() : super(CartState.initialState()) {
    on<CartEvent>((event, emit) async {
     event.map(
        addToCart: (event){
          emit(CartState(cart: Cart(items: List.from(state.cart.items)..add(event.product))));
        },
        removeFromCart: (event){
          emit(CartState(cart: Cart(items: List.from(state.cart.items)..remove(event.product))));
        },
    );
    });
    // on<AddToCart>(_addTo);
    // on<RemoveFromCart>(_removeFrom);
  }

  // void _addTo(AddToCart event, Emitter<CartState> emit) {
  //   state.items.add(event.product);
  // }
  //
  // void _removeFrom(RemoveFromCart event, Emitter<CartState> emit) {
  //   state.items.remove(event.product);
  // }
}
