// class Categories {
//   Categories({
//     required this.id,
//     required this.name,
//     required this.description,
//     required this.image,
//     required this.children,
//   });
//   late final String id;
//   late final String name;
//   late final String description;
//   late final String image;
//   late final List<String> children;

//   Categories.fromJson(Map<String, dynamic> json) {
//     id = json['id'] ?? "N/A";
//     name = json['name'] ?? "Unknown";
//     description = json['description'] ?? "There is no description";
//     image = json['image'] ??
//         "https://4.bp.blogspot.com/-OCutvC4wPps/XfNnRz5PvhI/AAAAAAAAEfo/qJ8P1sqLWesMdOSiEoUH85s3hs_vn97HACLcBGAsYHQ/s1600/no-image-found-360x260.png";
//     children = List.castFrom<dynamic, String>(json['children']);
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['id'] = id;
//     _data['name'] = name;
//     _data['description'] = description;
//     _data['image'] = image;
//     _data['children'] = children;
//     return _data;
//   }
// }
