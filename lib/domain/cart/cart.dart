import '../products/product.dart';
import 'package:equatable/equatable.dart';

class Cart extends Equatable{
 const Cart({this.items=const <Product>[]});
  final List<Product> items;

  double get getTotal=> items.fold(0, (total, current) => total+current.price);
 int get getTotalItems {
   var myMap = productQuantity(items);
   int sum = myMap.values.reduce((value, element) => value + element);
   return(sum==null) ?0 : sum;
 }

  Map productQuantity (items){
      Map quantity = Map();
     items.forEach((item){
       if(!quantity.containsKey(item)){
         quantity[item] = 1;
       } else {
         quantity[item] = quantity[item]+1 ;
       }
     });
     return quantity;
  }

  @override
  // TODO: implement props
  List<Object?> get props => [items];

}