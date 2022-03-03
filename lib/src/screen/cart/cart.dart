import 'package:beqala/src/application.dart';
import 'package:beqala/src/common/color.dart';
import 'package:beqala/src/screen/cart/local_widget/custom_cart.dart';
import 'package:beqala/src/screen/cart/local_widget/custom_dis.dart';
import 'package:beqala/src/widget/bottom_nav.dart';
import 'package:beqala/src/widget/custom_button.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';

class CartScreen extends StatefulWidget {
  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  late CartProvider provider;
  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      provider.loadCartItems();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    provider = context.watch<CartProvider>();
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
          SizedBox(
            height: getHeight(2),
          ),
          SizedBox(
            height: getHeight(5),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: getWidth(8)),
              child: Row(
                children: const [
                  CustomText(
                    text: "السلة",
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
                    text: "انت على بعد خطوة من اتمام الشراء",
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
            height: getHeight(30),
            child: CustomScrollableColumn(
              children: provider.items
                  .map(
                    (e) => CustomDis(e),
                  )
                  .toList(),
            ),
          ),
          CustomCart(),
           CustomButton("اتمام الشراء",(){
            push(SuccessScreen(),SuccessProvider());
          }),
        ],
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
