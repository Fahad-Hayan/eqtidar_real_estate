class Unit {
  Unit({
    required this.id,
    required this.name,
    required this.description,
    required this.room,
    required this.price,
    required this.garden,
    required this.vendor,
    required this.category,
    required this.label,
    required this.merchant,
  });
  late final String id;
  late final String name;
  late final String description;
  late final int room;
  late final int price;
  late final bool garden;
  late final Vendor vendor;
  late final Category category;
  late final Label label;
  late final Merchant merchant;

  Unit.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? "N/A";
    name = json['name'] ?? "Unknown";
    description = json['description'] ?? "There is no description";
    room = json['room'] ?? 0;
    price = json['price'] ?? 0;
    garden = json['garden'] ?? false;
    vendor = Vendor.fromJson(json['vendor']);
    category = Category.fromJson(json['category']);
    label = Label.fromJson(json['label']);
    merchant = Merchant.fromJson(json['merchant']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['description'] = description;
    _data['room'] = room;
    _data['price'] = price;
    _data['garden'] = garden;
    _data['vendor'] = vendor.toJson();
    _data['category'] = category.toJson();
    _data['label'] = label.toJson();
    _data['merchant'] = merchant.toJson();
    return _data;
  }
}

class Vendor {
  Vendor({
    required this.id,
    required this.name,
    required this.image,
  });
  late final String id;
  late final String name;
  late final String image;

  Vendor.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['image'] = image;
    return _data;
  }
}

class Category {
  Category({
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

  Category.fromJson(Map<String, dynamic> json) {
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

class Label {
  Label({
    required this.id,
    required this.name,
  });
  late final String id;
  late final String name;

  Label.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    return _data;
  }
}

class Merchant {
  Merchant({
    required this.id,
    required this.name,
  });
  late final String id;
  late final String name;

  Merchant.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    return _data;
  }
}
