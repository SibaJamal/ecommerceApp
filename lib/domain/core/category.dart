class MyCategory {
  late String id;
  late String name;

  MyCategory();

  MyCategory.fromJson(Map<String, dynamic> json) {
    id = json['_id'];
    name = json['name'];
  }
}


