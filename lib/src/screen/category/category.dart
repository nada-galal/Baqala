import 'package:beqala/src/application.dart';
import 'package:beqala/src/common/color.dart';
import 'package:beqala/src/widget/bottom_nav.dart';
import 'package:beqala/src/widget/main_drawer.dart';

import 'local_widget/local_widgets.dart';

class CategoryScreen extends StatefulWidget {
  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  late CategoryProvider provider;
  @override
  Widget build(BuildContext context) {
    provider = context.watch<CategoryProvider>();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_forward_outlined, color: mainGreen),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: getHeight(5),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: getWidth(8)),
              child: Row(
                children: const [
                  CustomText(
                    text: "متعة التسوق...",
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
                    text: "اختر التصنيف الذى تريد واشتري بكل سهولة",
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
            height: getHeight(70),
            child: MainCategory(),
          )
        ],
      ),
      drawer: MainDrawer(),
      bottomNavigationBar: BottomNav(),
    );
  }
}
