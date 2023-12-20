class Product {
  late String title;
  late String description;
  late int quantity;
  late String imagesUrl;
  late double price;
  late int id;
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
    this.imagesUrl,
    this.price,
    this.id,
    this.userEmail,
    this.userName,
    this.createdAt,
    this.category,
    // this.updatedAt
      // this.address,
      // this.deliveryState,
  );

  Product.fromJson(Map<String, dynamic> json) {
    id= json ['id'];
    title = json ['title'];
    description = json ['description'];
    category = json ['category'];
    imagesUrl = json ['image'];
    quantity = json ['rating']['count'];
    price = json['price'];
    userName = 'user Name';
    userEmail = 'user@mail.com';

    // createdAt = json['createdAt'];
    // category= json ['category']['slug'];
    // imagesUrl = json['attributes']['image'];
    // address = json['attributes']['address'];
    // deliveryState = json['attributes']['delivery'];
    // updatedAt = json[0]['updatedAt'];
  }
}


