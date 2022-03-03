import 'dart:convert';

extension CategoryFunctions on Category{
}
class Category {
  Category({
    required this.id,
    //required this.parentId,
    required this.name,
    required this.imagePath,
    //required this.productsCount,
    required this.children,
  });

  int id;
  //String parentId;
  String name;
  String imagePath;
  //int productsCount;
  List<ProductInfoCat> children;

  Category copyWith({
     required int id,
    // required String parentId,
     required String name,
     required String imagePath,
     required int productsCount,
    required List<ProductInfoCat> children,
  }) =>
      Category(
        id: id ,
        //parentId: parentId ,
        name: name ,
        imagePath: imagePath.isEmpty?"":imagePath ,
        //productsCount: productsCount ,
        children: children ,
      );

  factory Category.fromJson(String str) => Category.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Category.fromMap(Map<String, dynamic> json) => Category(
    id: json["id"],
    //parentId: json["parent_id"] ,
    name: json["name"],
    imagePath: json["image_path"]??"" ,
    //productsCount: json["products_count"],
    children:  List<ProductInfoCat>.from(json["children"].map((x) => ProductInfoCat.fromMap(x),
  ),),);

  Map<String, dynamic> toMap() => {
    "id": id,
    //"parent_id": parentId ,
    "name": name,
    "image_path": imagePath ,
    //"products_count": productsCount,
    "children":  List<dynamic>.from(children.map((x) => x.toMap())),
  };

}
class ProductInfoCat {
  ProductInfoCat({
    required this.id,
    required this.parentId,
    required this.name,
    required this.productsCount,
  });

  int id;
  String parentId;
  String name;
  int productsCount;

  ProductInfoCat copyWith({
    required int id,
    required String parentId,
    required String name,
    required dynamic imagePath,
    required int productsCount,
  }) =>
      ProductInfoCat(
        id: id ,
        parentId: parentId ,
        name: name ,
        productsCount: productsCount ,
      );

  factory ProductInfoCat.fromJson(String str) => ProductInfoCat.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ProductInfoCat.fromMap(Map<String, dynamic> json) => ProductInfoCat(
    id: json["id"],
    parentId: json["parent_id"],
    name: json["name"],
    productsCount: json["products_count"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "parent_id": parentId,
    "name": name,
    "products_count": productsCount,
  };

}


