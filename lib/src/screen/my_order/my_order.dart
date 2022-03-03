import 'package:beqala/src/application.dart';
import 'package:beqala/src/common/color.dart';
import 'package:beqala/src/widget/bottom_nav.dart';

class MyOrderScreen extends StatelessWidget {
  late MyOrderProvider provider;

  @override
  Widget build(BuildContext context) {
    provider = context.watch<MyOrderProvider>();
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
                    text: "طلباتى...",
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
                    text: "تابع جميع طلباتك وتتبع توصيل المندوب",
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
          SizedBox(height: getHeight(3),),
          SizedBox(
            height: getHeight(65),
           child: ListView(children: [SizedBox(
             height: getHeight(25),
             child: Column(
               children: [
                 SizedBox(
                   height: getHeight(15),
                   child: Container(
                     margin: EdgeInsets.symmetric(horizontal: getWidth(8),),
                     child: ListView(
                       children: [
                         Container(
                           width: getWidth(100),
                           height: getHeight(15),
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10),
                             border: Border.all(color: Colors.black12, width: 2),
                           ),
                           child: Row(
                             children: [
                               SizedBox(
                                 width: getWidth(26),
                                 child: Column(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children:  [
                                     CustomText(
                                       text: "رقم الطلبية",
                                       style: TextStyle(
                                         fontWeight: FontWeight.bold,
                                         fontFamily: mainFont,
                                         fontSize: getWidth(4),
                                       ),
                                     ),
                                     CustomText(
                                       text: "125",
                                       style: TextStyle(
                                         fontFamily: mainFont,
                                         fontSize: getWidth(4),
                                       ),
                                     ),

                                   ],
                                 ),
                               ),
                               Container(
                                 width: getWidth(1),
                                 color: Colors.black12,
                               ),
                               SizedBox(
                                 width: getWidth(26),
                                 child: Column(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children:  [
                                     CustomText(
                                       text: "رقم الطلبية",
                                       style: TextStyle(
                                         fontWeight: FontWeight.bold,
                                         fontFamily: mainFont,
                                         fontSize: getWidth(4),
                                       ),
                                     ),
                                     CustomText(
                                       text: "125",
                                       style: TextStyle(
                                         fontFamily: mainFont,
                                         fontSize: getWidth(4),
                                       ),
                                     ),

                                   ],
                                 ),
                               ),
                               Container(
                                 width: getWidth(1),
                                 //height: double.infinity,
                                 color: Colors.black12,
                               ),
                               SizedBox(
                                 width: getWidth(26),
                                 child: Column(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children:  [
                                     CustomText(
                                       text: "رقم الطلبية",
                                       style: TextStyle(
                                         fontWeight: FontWeight.bold,
                                         fontFamily: mainFont,
                                         fontSize: getWidth(4),
                                       ),
                                     ),
                                     CustomText(
                                       text: "125",
                                       style: TextStyle(
                                         fontFamily: mainFont,
                                         fontSize: getWidth(4),
                                       ),
                                     ),

                                   ],
                                 ),
                               ),
                             ],
                           ),
                         )
                       ],
                     ),
                   ),
                 ),
                 Container(
                   margin: EdgeInsets.symmetric(horizontal: getWidth(8),),
                   height: getHeight(10),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       Container(
                         width: getWidth(40),
                         height: getWidth(15),
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(12),
                           color: Colors.black12,
                         ),
                         child: Center(child: CustomText(text: "قيد المعاينة",style: TextStyle(
                           fontFamily: mainFont,
                           fontWeight: FontWeight.bold,
                           fontSize: getWidth(4.2),
                         ),),),
                       ),
                       SizedBox(width: getWidth(5),),
                       SizedBox(
                         width: getWidth(15),
                         height: getWidth(15),
                         child: TextButton(
                           style: TextButton.styleFrom(
                             backgroundColor: mainOrange,
                             shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(15),
                             ),
                           ),
                           onPressed: () {},
                           child: const Icon(Icons.request_page,color: Colors.white,size: 25,),
                         ),
                       ),
                     ],
                   ),
                 ),
               ],
             ),
           ),],),
          )
        ],
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
