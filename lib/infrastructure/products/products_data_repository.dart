import 'package:dartz/dartz.dart';
import 'package:e_commerce/constants.dart';
import 'package:e_commerce/infrastructure/core/network_helper.dart';
import 'package:injectable/injectable.dart';

import '../../domain/products/fetch_data_failure.dart';
import '../../domain/products/product.dart';

@singleton
class ProductsRepository {

  Future<Either<FetchDataFailure,List<dynamic>>> getAllProducts() async {
    NetworkHelper helper;
    List<dynamic> products = [];
    try{
      helper = NetworkHelper('$url/products');
      var list = await helper.fetchData();
      products = list.map((element) => Product.fromJson(element)).toList();
      return right(products);
    }  on FetchDataFailure catch (_) {
     return left(const FetchDataFailure.connection());
    }
  }

  Future<Either<FetchDataFailure,List<dynamic>>> getCategories() async {
    NetworkHelper helper;
    try{
    helper = NetworkHelper('$url/products/categories');
    var info = await helper.fetchData();
    List<dynamic> categories = info;
    return right(categories);
    } on FetchDataFailure catch (_) {
      return left(const FetchDataFailure.connection());
    }
  }

  Future<Either<FetchDataFailure,List<dynamic>>> getCategoryProducts(String filter) async {
    NetworkHelper helper;
    List<dynamic> products;
    try {
      helper = NetworkHelper('$url/products/category/$filter');
      var info = await helper.fetchData();
      products = info.map((element) => Product.fromJson(element)).toList();
      return right(products);
    } on FetchDataFailure catch (_){
      return left(const FetchDataFailure.connection());
    }
  }
}
