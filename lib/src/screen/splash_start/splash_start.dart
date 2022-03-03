import 'package:beqala/src/application.dart';
import 'package:beqala/src/common/color.dart';

class SplashStartScreen extends StatelessWidget {
  late SplashStartProvider provider;

  @override
  Widget build(BuildContext context) {
    provider = context.watch<SplashStartProvider>();
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: getHeight(15)),
          SizedBox(
            child: Image.asset(
              getImage("splash_start/introduction1.png"),
              height: getHeight(50),
              width: getWidth(100),
            ),
          ),
          SizedBox(
            height: getHeight(10),
          ),
          SizedBox(
            height: getHeight(10),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: getWidth(10)),
              child: Row(
                children: [
                  //const Spacer(),
                  SizedBox(
                    width: getWidth(55),
                    height: getHeight(8),
                    child: TextButton(
                      onPressed: () =>
                          push(CategoryScreen(), CategoryProvider()),
                      style: TextButton.styleFrom(
                        backgroundColor: mainGreen,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: const CustomText(
                        text: "تسوق الان",
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
                        backgroundColor: mainOrange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () {},
                      child: Image.asset(
                        getImage("splash_start/delivery.png"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
