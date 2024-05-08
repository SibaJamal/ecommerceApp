import 'package:auto_route/auto_route.dart';
import 'package:e_commerce/constants.dart';
import 'package:e_commerce/presentation/core/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../application/cart/cart_bloc.dart';
import '../../domain/products/product.dart';

@RoutePage()
class ProductPage extends StatelessWidget {
  final Product product;

  const ProductPage({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            context.popRoute();
          },
          child: const Icon(Icons.arrow_back,color: primaryColor,),
        ),
        title: Text(product.title,style: const TextStyle(color: primaryColor),),
      ),
      body: BlocListener<CartBloc, CartState>(
        listener: (context, state) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              backgroundColor: primaryColor,
              content: Text('added to your cart',style: TextStyle(color: Colors.white),),
            ),
          );
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(image: NetworkImage(product.imageUrl)),
                SizedBox(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width:MediaQuery.of(context).size.width * 0.75,
                        child: Text(
                          product.title,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: const TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20),
                        ),
                      ),
                      GestureDetector(
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: Icon(
                            size: 40,
                            Icons.add_box,
                            color: primaryColor,
                          ),
                        ),
                        onTap: () {
                          BlocProvider.of<CartBloc>(context).add(CartEvent.addToCart(product: product));
                        },
                      ),
                    ],
                  ),
                ),
                Text(
                  "${product.price}\$",
                  style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                      color: primaryColor),
                ),
                const MyTitle(text: "Description:"),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    product.description,
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: textGray),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // Text(
                    //   ///delete this
                    //   DateFormat('yyyy-MM-dd – kk:mm')
                    //       .format(DateTime.parse(product.createdAt)),
                    //   style: const TextStyle(
                    //       fontSize: 12,
                    //       fontWeight: FontWeight.w400,
                    //       color: textGray),
                    // ),
                  ],
                ),
                MyTitle(text: "Available Quantity: ${product.quantity}"),
                const MyTitle(text: "Owner Info:"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 100,
                      height: 100,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('images/ProfilePicture.jpg'),
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.userName,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          product.userEmail,
                          style: const TextStyle(fontWeight: FontWeight.bold),
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
