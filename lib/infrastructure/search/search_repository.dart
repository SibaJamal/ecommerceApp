import '../../constants.dart';
import '../../domain/products/product.dart';
import '../core/network_helper.dart';
import 'package:injectable/injectable.dart';

@singleton
class SearchRepository {
  Future<List<dynamic>> searchProducts(
      {required String searchValue,}) async {
    NetworkHelper helper;
    List<dynamic> products;

    helper = NetworkHelper('$url/products/$searchValue');
    var info = await helper.fetchData();
    print('lllllllllllllllllllllllllllllllllllllllll');
    print(info);
    print('lllllllllllllllllllllllllllllllllllllllll');

    /// make sure the data will be inside data list
    var list = info['data'];
    products = list.map((element) => Product.fromJson(element)).toList();
    return products;
  }
}
