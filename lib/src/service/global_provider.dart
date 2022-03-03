import 'package:chaotic/services.dart';

import '../application.dart';

class GlobalProviderService {

  GlobalProviderService._();
  static final _instance = GlobalProviderService._();
  factory GlobalProviderService.getInstance() => _instance;
  //--------------------
  final dioService = DioService.getInstance();
  int selectedId = -1;
  List<ProductInfo> data = [];
  Future<void> loadProduct() async {
    final result = await dioService.post(
      "products",
      data: {"category_id": selectedId},
    );
    if (result.response == null) return;
    for (final productObject in result.response!.data['data']['data']) {
      data.add(ProductInfo.fromMap(productObject));
    }
  }

}
