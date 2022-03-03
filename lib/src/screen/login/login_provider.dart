  import 'package:beqala/src/application.dart';

class LoginProvider extends ChangeNotifier{
String phone = "" ;
String password = "";
final dioService = DioService.getInstance();
Future<void> logIn(String phone,String password) async {
  final result = await dioService.post(
    "products",
    data: {"phone": phone,"password":password},
  );
  if (result.response == null) return;

}
}
  