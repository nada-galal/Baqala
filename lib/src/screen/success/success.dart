import 'package:beqala/src/application.dart';
import 'package:beqala/src/common/color.dart';

class SuccessScreen extends StatelessWidget {
  late SuccessProvider provider;

  @override
  Widget build(BuildContext context) {
    provider = context.watch<SuccessProvider>();
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: getHeight(10),
            ),
            CustomText(
              text: "تم ارسال طلبك بنجاح",
              style: TextStyle(
                  color: mainGreen,
                  fontFamily: mainFont,
                  fontSize: getWidth(6),
                fontWeight: FontWeight.bold,
              ),
            ),
            CustomText(
              text: "نسعد دائما بخدمتكم وتلبية احتياجكم",
              style: TextStyle(
                fontFamily: mainFont,
                fontSize: getWidth(4),
                
              ),
            ),
      SizedBox(
        height: getHeight(5),),
            SizedBox(
              height: getHeight(40),
              child: Image.asset(
                getImage("splash/success.png"),
              ),
            ),
            SizedBox(
              width: getWidth(100),
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
                      width: getWidth(60),
                      height: getHeight(7),
                      child: TextButton(
                        onPressed: () {
                          push(MyOrderScreen(),MyOrderProvider());
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: mainOrange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const CustomText(
                          text: "متابعة طلباتى",
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
                        child: const Icon(Icons.home,color: Colors.white,size: 25,),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
