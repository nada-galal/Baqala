import 'package:beqala/src/application.dart';

class ProductDetailsProvider extends ChangeNotifier {
  final dioService = DioService.getInstance();

  Future<void> addToCart(int prodId,int prodUnitId , int quantity) async {
    final result = await dioService.post(
      "add-to-cart",
      data: {"product_id": prodId,
        "product_weight_unit_id": prodUnitId,
        "quantity": quantity},
    );
  }
}
