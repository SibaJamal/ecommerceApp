class Product {
  late String title;
  late String description;
  late String quantity;
  // late String imagesUrl;
  late int price;
  late String userId;
  late String userName;
  late String userEmail;
  late String createdAt;
  late String category;
  // late String updatedAt;
  // late String address;
  // late String deliveryState;

  Product(
    this.title,
    this.description,
    this.quantity,
    // this.imagesUrl,
    this.price,
    this.userId,
    this.userEmail,
    this.userName,
    this.createdAt,
    this.category
    // this.updatedAt
      // this.address,
      // this.deliveryState,
  );

  Product.fromJson(Map<String, dynamic> json) {
    // data[0].title
    // data.products[0].title
    title = (json['title']==null)
        ? json['products'][0]['title']
        : json['title'];
    description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
    quantity = '4';
    price = (json['price']==null)
        ? json['products'][0]['price']
        : json['price'];
    userId = (json['createdBy']['_id']==null)
        ? json['products'][0]['createdBy']
        : json['createdBy']['_id'];
    userName = json['createdBy']['name'];
    userEmail = 'user@mail.com';
    createdAt = json['createdAt'];
    category= json ['category']['slug'];
    // imagesUrl = json['attributes']['image'];
    // address = json['attributes']['address'];
    // deliveryState = json['attributes']['delivery'];
    // updatedAt = json[0]['updatedAt'];
  }
}

// class Products {
// late int id;
//  late int userId;
//  late String title;
//  late String body;
//
//  Products(this.id,this.title,this.userId,this.body);
//  Products.fromJson(Map<String,dynamic> json) {
//    id = json['id'];
//    userId = json['userId'];
//    title = json['title'];
//    body = json['body'];
// }
//
// }


