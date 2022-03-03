import 'dart:convert';
import 'products.dart';

extension CartItemFunctions on CartItem{
}
class CartItem {
  CartItem({
    required this.cartId,
    required this.totalCost,
    required this.items,
  });

  int cartId;
  String totalCost;
  List<Item> items;

  CartItem copyWith({
    required int cartId,
    required String totalCost,
    required List<Item> items,
  }) =>
      CartItem(
        cartId: cartId,
        totalCost: totalCost ,
        items: items ,
      );

  factory CartItem.fromJson(String str) => CartItem.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CartItem.fromMap(Map<String, dynamic> json) => CartItem(
    cartId: json["cart_id"],
    totalCost: json["totalCost"],
    items: List<Item>.from(json["items"].map((x) => Item.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "cart_id": cartId,
    "totalCost": totalCost,
    "items": List<dynamic>.from(items.map((x) => x.toMap())),
  };
}

class Item {
  Item({
    required this.id,
    required this.weightUnit,
    required this.price,
    required this.quantity,
    required this.totalCost,
    required this.product,
  });

  int id;
  String weightUnit;
  String price;
  String quantity;
  String totalCost;
  ProductInfo product;

  Item copyWith({
   required int id,
   required String weightUnit,
   required String price,
   required String quantity,
   required String totalCost,
   required ProductInfo product,
  }) =>
      Item(
        id: id ,
        weightUnit: weightUnit ,
        price: price ,
        quantity: quantity ,
        totalCost: totalCost ,
        product: product ,
      );

  factory Item.fromJson(String str) => Item.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Item.fromMap(Map<String, dynamic> json) => Item(
    id: json["id"],
    weightUnit: json["weight_unit"],
    price: json["price"],
    quantity: json["quantity"],
    totalCost: json["total_cost"],
    product: ProductInfo.fromMap(json["product"]),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "weight_unit": weightUnit,
    "price": price,
    "quantity": quantity,
    "total_cost": totalCost,
    "product": product.toMap(),
  };
}
