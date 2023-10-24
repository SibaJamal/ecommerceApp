import 'package:e_commerce/application/cart/cart_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/counter_cubit.dart';
import '../../../constants.dart';
import '../../../domain/products/product.dart';
import '../../core/product_page.dart';

class ListCard extends StatefulWidget {
  final Product product;
  const ListCard({Key? key, required this.product}) : super(key: key);

  @override
  State<ListCard> createState() => _ListCardState();
}

class _ListCardState extends State<ListCard> {
  int _num = 1;
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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductPage(
                                  product: widget.product,
                                )));

                    ///todo make it only on image
                  },
                  child: SizedBox(
                    width: 100,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: secondaryColor)),
                      child: const Image(
                          height: 100,
                          width: 100,
                          image: AssetImage('images/ss.jpg')),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 3,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductPage(
                                      product: widget.product,
                                    )));
                      },
                      child: SizedBox(
                        width: 100,
                        child: Text(
                          widget.product.title,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                    GestureDetector(
                      child: const Icon(Icons.delete),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text(widget.product.title),
                              content: const Text(
                                  "do you want to remove this item from your cart?"),
                              actions: [
                                TextButton(
                                  child: const Text("yes"),
                                  onPressed: () {
                                    BlocProvider.of<CartBloc>(context).add(
                                        AddToCart(product: widget.product));
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
                const SizedBox(width: 50),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "${widget.product.price}\$",
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
                            setState(() {
                              _num++;
                              BlocProvider.of<CounterCubit>(context)
                                  .increment(widget.product.price.toString());
                            });
                          },
                        ),
                        Container(
                          width: 50,
                          child: Center(
                              child: Text(
                            _num.toString(),
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )),
                        ),
                        GestureDetector(
                          child: const Icon(Icons.remove),
                          onTap: () {
                            BlocProvider.of<CounterCubit>(context)
                                .decrement(widget.product.price.toString());
                            setState(() {
                              _num--;
                            });
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
