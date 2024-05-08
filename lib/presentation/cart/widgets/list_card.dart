import 'package:auto_route/auto_route.dart';
import 'package:e_commerce/application/cart/cart_bloc.dart';
import 'package:e_commerce/presentation/routs/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../constants.dart';
import '../../../domain/products/product.dart';
import '../../core/product_page.dart';

class ListCard extends StatelessWidget {
  final Product product;
  final int quantity;
  const ListCard({Key? key, required this.product, required this.quantity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: SizedBox(
        height: 150,
        width: 150,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    context.router.push(ProductRoute(product:product));

                    ///todo make it only on image
                  },
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width*0.3,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: secondaryColor)),
                      child: Image(
                          height: 100,
                          width: 100,
                          image: NetworkImage(product.imageUrl)),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductPage(
                                        product: product,
                                      )));
                        },
                        child: Text(
                          product.title,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                      const SizedBox(height: 25),
                      GestureDetector(
                        child: const Icon(Icons.delete),
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text(product.title),
                                content: const Text(
                                    "do you want to remove this item from your cart?"),
                                actions: [
                                  TextButton(
                                    child: const Text("yes"),
                                    onPressed: () {
                                      BlocProvider.of<CartBloc>(context).add(
                                         CartEvent.addToCart(product: product));
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                  TextButton(
                                    child: const Text("Cancel"),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
                //  SizedBox(
                //   width: MediaQuery.of(context).size.width*0.01,
                // ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "${product.price}\$",
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: primaryColor),
                    ),
                    const SizedBox(height: 50),
                    Row(
                      children: [
                        GestureDetector(
                          child: const Icon(Icons.add),
                          onTap: () {
                              BlocProvider.of<CartBloc>(context).add(CartEvent.addToCart(product: product));
                          },
                        ),
                        SizedBox(
                          width: 50,
                          child: Center(
                              child: Text(
                           quantity.toString(),
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )),
                        ),
                        GestureDetector(
                          child: const Icon(Icons.remove),
                          onTap: () {
                            BlocProvider.of<CartBloc>(context).add(CartEvent.removeFromCart(product: product));
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
