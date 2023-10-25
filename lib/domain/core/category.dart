class MyCategory {
  late String id;
  late String name;
  late String slug;

  MyCategory();

  MyCategory.fromJson(Map<String, dynamic> json) {
    id = json['_id'];
    name = json['name'];
    slug = json['slug'];
  }
}


