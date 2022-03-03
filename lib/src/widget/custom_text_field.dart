import 'package:beqala/src/application.dart';
import 'package:beqala/src/common/color.dart';

class CustomTextField extends StatelessWidget {
  final String hint;

  final IconData icon;
  final onClick;

  const CustomTextField(
      {required this.hint, required this.onClick, this.icon = Icons.add});

  String _errorMessage(String str) {
    switch (hint) {
      case "Enter your name":
        return "Name is Empty";
      case "Enter your Email":
        return "Email is Empty";
      case "Enter your Password":
        return "Password is Empty";
    }
    return "";
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getWidth(8)),
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return _errorMessage(hint);
          }
        },
        onSaved: onClick,
        cursorColor: mainOrange,
        obscureText: hint == "Enter your Password" ? true : false,
        maxLines: hint == "الرسالة"?5:1,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: hint =="الرسالة"?Colors.white:mainOrange,
            size: 25,
          ),
          hintText: hint,
          hintStyle: TextStyle(
            fontFamily: mainFont,
            fontSize: getWidth(4.5),
            fontWeight: FontWeight.bold,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: Colors.black12),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: Colors.black12),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: Colors.black12),
          ),
        ),
      ),
    );
  }
}
