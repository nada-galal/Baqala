  import 'package:beqala/src/application.dart';

class AboutUsProvider extends ChangeNotifier{
  String aboutUs = "";
  final dioService = DioService.getInstance();
  Future<void> getProductConf() async {
    final result = await dioService.get("get-configs");
    if (result.response == null) return;
    aboutUs = result.response!.data['data']["about_us"];
    notifyListeners();
  }
}
  