import 'dart:convert';
extension ProductsFunctions on Products{
}
class Products {
  Products({
    required this.currentPage,
    required this.data,
    required this.firstPageUrl,
    required this.from,
    required this.lastPage,
    required this.lastPageUrl,
    required this.nextPageUrl,
    required this.path,
    required this.perPage,
    required this.prevPageUrl,
    required this.to,
    required this.total,
  });

  int currentPage;
  List<ProductInfo> data;
  String firstPageUrl;
  int from;
  int lastPage;
  String lastPageUrl;
  dynamic nextPageUrl;
  String path;
  int perPage;
  dynamic prevPageUrl;
  int to;
  int total;

  Products copyWith({
    required int currentPage,
    required List<ProductInfo> data,
    required String firstPageUrl,
    required int from,
    required int lastPage,
    required String lastPageUrl,
    required dynamic nextPageUrl,
    required String path,
    required int perPage,
    required dynamic prevPageUrl,
    required int to,
    required int total,
  }) =>
      Products(
        currentPage: currentPage,
        data: data ,
        firstPageUrl: firstPageUrl ,
        from: from ,
        lastPage: lastPage ,
        lastPageUrl: lastPageUrl ,
        nextPageUrl: nextPageUrl ,
        path: path ,
        perPage: perPage ,
        prevPageUrl: prevPageUrl ,
        to: to ,
        total: total ,
      );

  factory Products.fromJson(String str) => Products.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Products.fromMap(Map<String, dynamic> json) => Products(
    currentPage: json["current_page"],
    data: List<ProductInfo>.from(json["data"].map((x) => ProductInfo.fromMap(x))),
    firstPageUrl: json["first_page_url"],
    from: json["from"],
    lastPage: json["last_page"],
    lastPageUrl: json["last_page_url"],
    nextPageUrl: json["next_page_url"],
    path: json["path"],
    perPage: json["per_page"],
    prevPageUrl: json["prev_page_url"],
    to: json["to"],
    total: json["total"],
  );

  Map<String, dynamic> toMap() => {
    "current_page": currentPage,
    "data": List<dynamic>.from(data.map((x) => x.toMap())),
    "first_page_url": firstPageUrl,
    "from": from,
    "last_page": lastPage,
    "last_page_url": lastPageUrl,
    "next_page_url": nextPageUrl,
    "path": path,
    "per_page": perPage,
    "prev_page_url": prevPageUrl,
    "to": to,
    "total": total,
  };
}

class ProductInfo {
  ProductInfo({
    required this.id,
    required this.name,
    required this.description,
    required this.imagePath,
    required this.category,
    required this.weightUnits,
  });

  int id;
  String name;
  String description;
  String imagePath;
  CategoryInfo category;
  List<WeightUnit> weightUnits;

  ProductInfo copyWith({
    required int id,
    required String name,
    required String description,
    required String imagePath,
    required CategoryInfo category,
   required List<WeightUnit> weightUnits,
  }) =>
      ProductInfo(
        id: id,
        name: name ,
        description: description ,
        imagePath: imagePath ,
        category: category ,
        weightUnits: weightUnits ,
      );
  factory ProductInfo.fromJson(String str) => ProductInfo.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ProductInfo.fromMap(Map<String, dynamic> json) => ProductInfo(
    id: json["id"],
    name: json["name"],
    description: json["description"],
    imagePath: json["image_path"],
    category:CategoryInfo.fromMap(json["category"]) ,
    weightUnits: List<WeightUnit>.from(json["weight_units"].map((x) => WeightUnit.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "name": name,
    "description": description,
    "image_path": imagePath,
    "category": category,
    "weight_units": List<dynamic>.from(weightUnits.map((x) => x.toMap())),
  };
}
class WeightUnit {
  WeightUnit({
    required this.id,
    required this.weightId,
    required this.weightUnit,
    required this.weightPrice,
    required this.startFrom,
  });

  int id;
  int weightId;
  String weightUnit;
  String weightPrice;
  String startFrom;

  WeightUnit copyWith({
    required int id,
    required int weightId,
    required String weightUnit,
    required String weightPrice,
    required String startFrom,
  }) =>
      WeightUnit(
        id: id ,
        weightId: weightId ,
        weightUnit: weightUnit ,
        weightPrice: weightPrice ,
        startFrom: startFrom ,
      );

  factory WeightUnit.fromJson(String str) => WeightUnit.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory WeightUnit.fromMap(Map<String, dynamic> json) => WeightUnit(
    id: json["id"],
    weightId: json["weight_id"],
    weightUnit: json["weight_unit"],
    weightPrice: json["weight_price"],
    startFrom: json["start_from"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "weight_id": weightId,
    "weight_unit": weightUnit,
    "weight_price": weightPrice,
    "start_from": startFrom,
  };
}
class CategoryInfo {
  CategoryInfo({
    required this.id,
    required this.parentId,
    required this.name,
    required this.imagePath,
    required this.productsCount,
  });

  int id;
  String parentId;
  String name;
  dynamic imagePath;
  int productsCount;

  CategoryInfo copyWith({
    required int id,
    required String parentId,
    required String name,
    required dynamic imagePath,
    required int productsCount,
  }) =>
      CategoryInfo(
        id: id ,
        parentId: parentId ,
        name: name ,
        imagePath: imagePath ?? "",
        productsCount: productsCount ,
      );

  factory CategoryInfo.fromJson(String str) => CategoryInfo.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CategoryInfo.fromMap(Map<String, dynamic> json) => CategoryInfo(
    id: json["id"],
    parentId: json["parent_id"],
    name: json["name"],
    imagePath: json["image_path"],
    productsCount: json["products_count"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "parent_id": parentId,
    "name": name,
    "image_path": imagePath,
    "products_count": productsCount,
  };
}


