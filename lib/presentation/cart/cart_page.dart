import 'package:auto_route/annotations.dart';
import 'package:e_commerce/application/cart/cart_bloc.dart';
import 'package:e_commerce/presentation/cart/widgets/list_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../constants.dart';

@RoutePage()
class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Your Cart",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: primaryColor),
            ),
          ),
          Center(
            child: BlocBuilder<CartBloc, CartState>(
              builder: (context, state) {
                if (state.cart.items == []) {
                  return const Center(
                      child: Text(
                    'Add items',
                    style: TextStyle(
                      fontSize: 30,
                      color: textGray,
                    ),
                  ));
                } else {
                  return Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: SizedBox(
                      // decoration: BoxDecoration(border: Border.all(color: primaryColor),borderRadius: BorderRadius.circular(25)),
                      height: MediaQuery.of(context).size.height * 0.65,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView.builder(
                          itemCount: state.cart.productQuantity(state.cart.items).keys.length,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return ListCard(
                              product: state.cart.productQuantity(state.cart.items).keys.elementAt(index),
                              quantity: state.cart.productQuantity(state.cart.items).values.elementAt(index),
                            );
                          },
                          scrollDirection: Axis.vertical,
                        ),
                      ),
                    ),
                  );
                }
              },
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20.0),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text(
                          'total:',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        BlocBuilder<CartBloc, CartState>(
                          builder: (context, state) {
                            return Text(
                              BlocProvider.of<CartBloc>(context)
                                  .state
                                  .cart
                                  .getTotal
                                  .toString(),
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        minimumSize: const Size(350, 50),
                      ),
                      onPressed: () async {},
                      child: const Text(
                        'Checkout',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
