  import 'package:beqala/src/application.dart';
import 'package:beqala/src/common/color.dart';
import 'package:beqala/src/widget/custom_button.dart';
import 'package:beqala/src/widget/custom_text_field.dart';


class MndLoginScreen extends StatelessWidget {
  late MndLoginProvider provider;
  
  @override
  Widget build(BuildContext context) {
    provider = context.watch<MndLoginProvider>();
    return Scaffold(
      body:  Column(
          children: [
            SizedBox(height: getHeight(3),),
            SizedBox(
              height: getHeight(5),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: getWidth(2)),
                child: Row(
                  children: [
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Image.asset(
                        getImage("action/arrow@.png"),
                        height: getHeight(20),
                        width: getWidth(10),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: getHeight(5),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: getWidth(8)),
                child: Row(
                  children: const [
                    CustomText(
                      text: "مندوب التوصيل...",
                      style: TextStyle(
                        fontFamily: mainFont,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: getHeight(5),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: getWidth(8)),
                child: Row(
                  children: [
                    CustomText(
                      text: "سجل الدخول وتابع طلابات التوصل",
                      style: TextStyle(
                        fontFamily: mainFont,
                        fontWeight: FontWeight.bold,
                        fontSize: getWidth(4.2),
                        color: Colors.black54,
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: getHeight(2),),
            SizedBox(
              height: getHeight(40),
              child: Image.asset(
                getImage("splash/delivery.png"),
              ),
            ),
            SizedBox(
              height: getHeight(3),
            ),
            SizedBox(
              height: getHeight(35),
              child: Form(
                  child: ListView(
                    children: [
                      SizedBox(
                        height: getHeight(8),
                        child: CustomTextField(
                          hint: "    رقم الجوال",
                          onClick: (value) {
                            provider.phone = value;
                          },
                          icon: Icons.phone_android_outlined,
                        ),
                      ),
                      SizedBox(
                        height: getHeight(3),
                      ),
                      SizedBox(
                        height: getHeight(8),
                        child: CustomTextField(
                          hint: "    كلمة المرور",
                          onClick: (value) {
                            provider.password = value;
                          },
                          icon: Icons.lock,
                        ),
                      ),
                      SizedBox(
                        height: getHeight(5),
                      ),
              CustomButton("دخول", (){}),
                    ],
                  ),
                ),
              ),
          ],
        ),
    );
  }
}
  