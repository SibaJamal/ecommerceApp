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
                  child: Image(
                      height: 200,
                      width: 150,
                      image: NetworkImage(product.imageUrl)),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.001),
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
                      Expanded(
                        flex: 2,
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
    );
  }
}
