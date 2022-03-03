import 'package:beqala/src/application.dart';
import 'package:beqala/src/common/color.dart';
import 'package:beqala/src/widget/drawer_button.dart';
import 'package:beqala/src/widget/drawer_button2.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: getWidth(80),
      height: getHeight(100),
      color: Colors.white,
      child: Column(
        children: [
          Container(
            width: getWidth(80),
            height: getHeight(30),
            color: mainGreen,
            child: Center(
              child: Image.asset(
                getImage(
                  "splash/logo.png",
                ),
                width: getWidth(70),
              ),
            ),
          ),
          SizedBox(
            height: getHeight(3),
          ),
          DrawerButton("التصفيات", (){}),
          SizedBox(
            height: getHeight(2),
          ),
          DrawerButton("شارك اصدقائك", (){}),
          SizedBox(
            height: getHeight(2),
          ),
          DrawerButton("عن بقالة", (){
            push(AboutUsScreen(),AboutUsProvider());
          }),
          SizedBox(
            height: getHeight(2),
          ),
          DrawerButton("تواصل معانا", (){
            push(ContactUsScreen(),ContactUsProvider());
          }),
          SizedBox(
            height: getHeight(2),
          ),
          DrawerButton2("سجل دخولك", (){
            push(LoginScreen(),LoginProvider());
          }),
          SizedBox(
            height: getHeight(2),
          ),
          DrawerButton2("عميل جديد", (){
            push(RegisterScreen(),RegisterProvider());
          }),


        ],
      ),
    );
  }
}
