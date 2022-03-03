import 'package:beqala/src/application.dart';
import 'package:beqala/src/common/color.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late SplashProvider provider;

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      push(SplashStartScreen(), SplashStartProvider());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    provider = context.watch<SplashProvider>();
    return Scaffold(
      backgroundColor: mainGreen,
      body: Column(
        children: [
          SizedBox(height: getHeight(20)),
          Container(
            width: getWidth(80),
            margin: EdgeInsets.symmetric(horizontal: getWidth(10)),
            child: Image.asset(
              getImage("splash/logo.png"),
            ),
          ),
        ],
      ),
    );
  }
}
