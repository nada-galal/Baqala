import 'package:beqala/src/application.dart';

class RegisterProvider extends ChangeNotifier {
  String phone = "";

  String password = "";
  String name = "";

  String email = "";
  String confPass = "";
  final dioService = DioService.getInstance();

  Future<void> logOut(String name, String phone, String email, String password,
      String confPassword,) async {
    final result = await dioService.post(
      "products",
      data: {
        "name": name,
        "phone": phone,
        "email": email,
        "password": password,
        "password_confirmation": confPassword
      },
    );
    if (result.response == null) return;
  }
}
