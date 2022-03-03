  import 'package:beqala/src/application.dart';

class CartProvider extends ChangeNotifier{
  int cartId =0;
  String totalCost = "";
  List<Item> items = [];
  final dioService = DioService.getInstance();
  Future<void> loadCartItems() async {
    final result = await dioService.get("cart-items");
    if (result.response == null) return;
    cartId = CartItem.fromMap(result.response!.data['data']).cartId;
    totalCost = CartItem.fromMap(result.response!.data['data']).totalCost;
    for (final cartItemObject in result.response!.data['data']['items']) {
      items.add(Item.fromMap(cartItemObject));
    }
    notifyListeners();
  }
  Future<void> deleteCartItem(int cartId,int cartItemId)async{
    final result = await dioService.post(
      "delete-cart-item",
      data: {
        'cart_id': cartId,
        'cart_item_id': cartItemId,
      },
    );
    if(result.response!.data["message"]=="done.") {
      items.removeAt(cartItemId);
    }
    notifyListeners();
  }
}
  