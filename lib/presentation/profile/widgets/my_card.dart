import 'package:e_commerce/domain/products/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../core/product_page.dart';

class MyCard extends StatelessWidget {
  final Product product;
  const MyCard(this.product, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProductPage(
                      product: product,
                    )));
      },
      child: Card(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration:
                    BoxDecoration(border: Border.all(color: secondaryColor)),
                child: const Image(
                    height: 100,
                    width: 100,
                    image: AssetImage('images/ss.jpg')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                product.title.toString(),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
