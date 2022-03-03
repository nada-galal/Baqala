import 'package:beqala/src/application.dart';
import 'package:beqala/src/service/services.dart';

class CategoryProvider extends ChangeNotifier {
  final categories = <Category>[];
  final dioService = DioService.getInstance();

  Future<void> loadCategory() async {
    final result = await dioService.get("categories");
    if (result.response == null) return;
    for (final categoryObject in result.response!.data['data']) {
      categories.add(Category.fromMap(categoryObject));
    }
    notifyListeners();
  }
}
