import 'package:e_commerce/application/cart/cart_bloc.dart';
import 'package:e_commerce/application/counter_cubit.dart';
import 'package:e_commerce/presentation/cart/widgets/list_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../constants.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(3.0),
            child: Text(
              "Your Cart",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: primaryColor),
            ),
          ),
          Center(
            child: BlocBuilder<CartBloc, CartState>(
              builder: (context, state) {
                if (state.items == []) {
                  return const Center(
                      child: Text(
                    'Add items',
                    style: TextStyle(
                      fontSize: 30,
                      color: textGray,
                    ),
                  ));
                } else {
                  return SizedBox(
                    height: MediaQuery.of(context).size.height * 0.65,
                    child: ListView.builder(
                      itemCount: state.items.length,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return ListCard(
                          product: state.items[index],
                        );
                      },
                      scrollDirection: Axis.vertical,
                    ),
                  );
                }
              },
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      'items count:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    BlocBuilder<CounterCubit, CounterState>(
                      builder: (context, state) {
                        return Text(
                          BlocProvider.of<CounterCubit>(context)
                              .state
                              .counterValue
                              .toString(),
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        );
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      'total:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    BlocBuilder<CounterCubit, CounterState>(
                      builder: (context, state) {
                        return Text(
                          BlocProvider.of<CounterCubit>(context)
                              .state
                              .value
                              .toString(),
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(350, 50),
            ),
            onPressed: () async {},
            child: const Text(
              'order',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
