import 'package:beqala/src/application.dart';
import 'package:beqala/src/common/color.dart';
import 'package:beqala/src/widget/bottom_nav.dart';
import 'package:beqala/src/widget/custom_text_field.dart';

class RegisterScreen extends StatelessWidget {
  late RegisterProvider provider;
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    provider = context.watch<RegisterProvider>();
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: getHeight(5),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: getWidth(2)),
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Image.asset(
                      getImage("action/menu.png"),
                      height: getHeight(20),
                      width: getWidth(10),
                    ),
                  ),
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
          SizedBox(height: getHeight(2)),
          SizedBox(
            height: getHeight(5),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: getWidth(8)),
              child: Row(
                children: const [
                  CustomText(
                    text: "تسجيل الدخول...",
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
                    text: "سجل دخولك وتابع مشترياتك بكل سهولة",
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
            height: getHeight(2),
          ),
          SizedBox(
            height: getHeight(66),
            child: Form(
              key: _globalKey,
              child: CustomScrollableColumn(
                children: [
                  SizedBox(
                    height: getHeight(8),
                    child: CustomTextField(
                      hint: "    اسم العميل",
                      onClick: (value) {
                        provider.phone = value;
                      },
                      icon: Icons.person,
                    ),
                  ),
                  SizedBox(
                    height: getHeight(3),
                  ),
                  SizedBox(
                    height: getHeight(8),
                    child: CustomTextField(
                      hint: "    البريد الاكترونى",
                      onClick: (value) {
                        provider.phone = value;
                      },
                      icon: Icons.email,
                    ),
                  ),
                  SizedBox(
                    height: getHeight(3),
                  ),
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
                  SizedBox(
                    height: getHeight(8),
                    child: CustomTextField(
                      hint: "    تاكيد كلمة المرور",
                      onClick: (value) {
                        provider.confPass = value;
                      },
                      icon: Icons.lock,
                    ),
                  ),
                  SizedBox(
                    height: getHeight(5),
                  ),
                  Container(
                    height: getHeight(8),
                    margin: EdgeInsets.symmetric(horizontal: getWidth(10)),
                    child: Row(
                      children: [
                        //const Spacer(),
                        SizedBox(
                          width: getWidth(60),
                          height: getHeight(7),
                          child: TextButton(
                            onPressed: () {
                              if (_globalKey.currentState!.validate()) {
                                _globalKey.currentState!.save();
                                provider.logOut(
                                    provider.name,
                                    provider.phone,
                                    provider.email,
                                    provider.password,
                                    provider.confPass,);
                                push(MyOrderScreen(),MyOrderProvider());
                              }
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: mainOrange,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const CustomText(
                              text: "تسجيل",
                              style: TextStyle(
                                fontFamily: mainFont,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: getWidth(5),
                        ),
                        SizedBox(
                          width: getWidth(15),
                          height: getWidth(15),
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: mainGreen,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            onPressed: () {},
                            child: const Icon(
                              Icons.lock,
                              color: Colors.white,
                              size: 25,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
