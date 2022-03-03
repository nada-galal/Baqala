import 'package:beqala/src/application.dart';
import 'package:beqala/src/service/global_provider.dart';

class ProductProvider extends ChangeNotifier {
  final dioService = DioService.getInstance();
  final globalProvider = GlobalProviderService.getInstance();
  Future<void> changeIndex(int index) async {
    if (globalProvider.selectedId == index) return;
    globalProvider.data.clear();
    globalProvider.selectedId = index;
    await globalProvider.loadProduct();
    notifyListeners();
  }
}
