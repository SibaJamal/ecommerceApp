import 'package:e_commerce/domain/products/product.dart';
import 'package:e_commerce/infrastructure/auth/authentication_data_provider.dart';
import 'package:injectable/injectable.dart';

@singleton
class CartRepository {
  final AuthenticationHelper authenticationHelper;

  CartRepository(this.authenticationHelper);

  Future<List<dynamic>> getAllCartItems() async {
    List<Product> items = [];

    var info = await authenticationHelper.getUserCart();
    var list = info['data'];
    items = list.map((element) => Product.fromJson(element)).toList();
    return items;
  }
}
///todo this local
