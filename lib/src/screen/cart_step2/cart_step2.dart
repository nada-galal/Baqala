import 'package:beqala/src/application.dart';
import 'package:beqala/src/common/color.dart';
import 'package:beqala/src/widget/bottom_nav.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class CartStep2Screen extends StatefulWidget {
  @override
  State<CartStep2Screen> createState() => _CartStep2ScreenState();
}

class _CartStep2ScreenState extends State<CartStep2Screen> {
  late CartStep2Provider provider;

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    provider = context.watch<CartStep2Provider>();
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: getHeight(3),
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
                    onPressed: () =>
                        push(SplashStartScreen(), SplashStartProvider()),
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
                    text: "تاكيد الشراء...",
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
                    text: "اختر المواعيد التى تناسبك ومكان الاستلام",
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
          Container(
            margin: EdgeInsets.symmetric(horizontal: getWidth(8)),
            height: getHeight(25),
            child: SfDateRangePicker(
              selectionColor: mainGreen,
              onSelectionChanged: _onSelectionChanged,
              initialSelectedDate: DateTime.now(),
            ),
          ),
          Container(
            height: getHeight(3),
            width: getWidth(100),
            margin: EdgeInsets.symmetric(horizontal: getWidth(8)),
            child: const Divider(
              color: Colors.black26,
            ),
          ),
          Container(
            height: getHeight(13),
            margin: EdgeInsets.symmetric(horizontal: getWidth(8)),
            child: Column(
              children: [
                const Spacer(),
                Row(
                children: [
                  Container(
                    width: getWidth(12),
                    height: getHeight(6),
                    decoration: BoxDecoration(
                      color: mainOrange,
                      borderRadius: BorderRadius.circular(getWidth(3)),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: const Icon(
                        Icons.arrow_forward_outlined,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: getWidth(70),
                    height: getHeight(6.5),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: mainOrange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(getHeight(1)),
                        ),
                      ),
                      child: Center(
                        child: CustomText(
                          text: "حدد مكان التوصيل علي الخريطه",
                          style: TextStyle(
                            fontFamily: mainFont,
                            color: Colors.white,
                            fontSize: getWidth(4),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  CustomText(text: "التوصل الى : ",
                    style: TextStyle(
                    fontFamily: mainFont,
                    fontSize: getWidth(4),
                  ),),
                    CustomText(text: "طريق السلطان ، حى المعزلة ،الرياض",
                      style: TextStyle(
                        fontFamily: mainFont,
                        fontSize: getWidth(3.6),
                        color: mainOrange,
                        fontWeight: FontWeight.bold,
                      ),)
                ],)
              ],
            ),
          ),
          Container(
            height: getHeight(3),
            width: getWidth(100),
            margin: EdgeInsets.symmetric(horizontal: getWidth(8)),
            child: const Divider(
              color: Colors.black26,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: getWidth(8)),
            height: getHeight(15),
            child:Column(
              children: [
                Row(
                  children: [
                    Radio(onChanged: (value) {  }, groupValue: "", value: "one",),
                    CustomText(text: "الدفع عند الاستلام",
                      style: TextStyle(
                        fontFamily: mainFont,
                        fontSize: getWidth(4),
                        fontWeight: FontWeight.bold,
                      ),),


                  ],
                ),
                Container(
                  height: getHeight(8),
                  padding: EdgeInsets.symmetric(horizontal: getWidth(3)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(getWidth(3)),
                    color: Colors.black12,
                  ),
                  child: TextFormField(
                    decoration:  InputDecoration(
                      hintText: "ملاحظات خاصة",
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        fontFamily: mainFont,
                        color: mainGreen,
                        fontSize: getWidth(4),
                        fontWeight: FontWeight.bold,
                      ),

                    ),
                  ),

                ),
              ],
            )
          ),
          Container(
            height: getHeight(3),
            width: getWidth(100),
            margin: EdgeInsets.symmetric(horizontal: getWidth(8)),
            child: const Divider(
              color: Colors.black26,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: getWidth(8)),
            child: Row(children: [
              CustomText(text: "اجمالى المشتريات : ",
                style: TextStyle(
                  fontFamily: mainFont,
                  fontSize: getWidth(4),
                  fontWeight: FontWeight.bold,
              ),),
              CustomText(text: "256",
                style: TextStyle(
                  fontFamily: mainFont,
                  fontSize: getWidth(4),
                  fontWeight: FontWeight.bold,
                  color: mainOrange,
                ),)
            ],),
          ),
          Container(
            height: getHeight(6),
            width: getWidth(100),
            margin: EdgeInsets.symmetric(horizontal: getWidth(8)),
            child: TextButton(
              onPressed: () {
              },
              style: TextButton.styleFrom(
                backgroundColor: mainOrange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(getHeight(1)),
                ),
              ),
              child: Center(
                child: CustomText(
                  text: "اتمام الشراء",
                  style: TextStyle(
                    fontFamily: mainFont,
                    color: Colors.white,
                    fontSize: getWidth(5),
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
