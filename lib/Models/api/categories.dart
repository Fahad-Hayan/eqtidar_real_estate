class Categories {
  Categories({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.children,
  });
  late final String id;
  late final String name;
  late final String description;
  late final String image;
  late final List<String> children;

  Categories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    image = json['image'];
    children = List.castFrom<dynamic, String>(json['children']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['description'] = description;
    _data['image'] = image;
    _data['children'] = children;
    return _data;
  }
}
