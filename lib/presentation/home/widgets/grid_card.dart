import 'package:auto_route/auto_route.dart';
import 'package:e_commerce/constants.dart';
import 'package:e_commerce/domain/products/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../application/cart/cart_bloc.dart';
import '../../routs/router.gr.dart';


class GridCard extends StatelessWidget {
  final Product product;
  const GridCard(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: SizedBox(
        height: 200,
        width: 150,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: secondaryColor)),
                  child: GestureDetector(
                    onTap: (){
                      context.router.push(ProductRoute(product:product));
                    },
                    child: const Image(
                        height: 150,
                        width: 200,
                        image: AssetImage('images/ss.jpg')),
                  ),
                ),
                const SizedBox(height: 15),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.title,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: const TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 16),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "${product.price}\$",
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: primaryColor),
                              ),
                              GestureDetector(
                                child: const Icon(
                                  size: 30,
                                  Icons.add_box_outlined,
                                  color: primaryColor,
                                ),
                                onTap: () {
                                  BlocProvider.of<CartBloc>(context).add(CartEvent.addToCart(product: product));
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
