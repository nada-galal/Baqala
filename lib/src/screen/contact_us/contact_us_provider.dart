  import 'package:beqala/src/application.dart';

class ContactUsProvider extends ChangeNotifier{
String name = "";
String phone = "";
String message = "";
final dioService = DioService.getInstance();
Future<void> contactUs(String name,String phone,String message) async {
  final result = await dioService.post(
    "contact-us",
    data: {"name": name,"phone":phone,"message":message},
  );
  if (result.response == null) return;
  notifyListeners();
}
}
  