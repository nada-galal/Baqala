import 'package:beqala/src/application.dart';
import 'package:beqala/src/common/color.dart';
import 'package:beqala/src/service/global_provider.dart';
import 'package:beqala/src/widget/main_drawer.dart';

class AboutUsScreen extends StatefulWidget {
  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  late AboutUsProvider provider;
  @override
  void initState() {
    Future.delayed(
      Duration.zero,
      () => provider.getProductConf(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    provider = context.watch<AboutUsProvider>();
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
                    text: "عن البقالة...",
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
                    text: "نبذة تعرفية عن تطبيق بقالة",
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
            height: getHeight(5),
          ),
          Container(
            width: getWidth(100),
            height: getHeight(70),
            margin: EdgeInsets.symmetric(horizontal: getWidth(8)),
            child: CustomText(
              text: provider.aboutUs,
              style: TextStyle(
                fontFamily: mainFont,
                fontSize: getWidth(4.5),
              ),
              maxLines: 20,
            ),
          )
        ],
      ),
      drawer: MainDrawer(),
    );
  }
}
