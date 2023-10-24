class User {
  late String id;
  late String email;
  late String name;
  late String token;
  late String image;
  late String balance;

  User({required id, required name, required email, required password});
  User.fromJson(Map<String, dynamic> json) {
    id = json['data']['user']['id'];
    name = json['data']['user']['attributes']['name'];
    email = json['data']['user']['attributes']['email'];
    image = json['data']['user']['relationships']['image'];
    image = json['data']['user']['relationships']['balance'];
  }
}
