import 'package:beqala/src/application.dart';
import 'package:beqala/src/common/color.dart';
import 'package:beqala/src/service/global_provider.dart';
import 'package:beqala/src/widget/bottom_nav.dart';

import 'local_widget/local_product.dart';

class ProductScreen extends StatefulWidget {
  final List<ProductInfoCat> children;
  ProductScreen(this.children);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  late ProductProvider provider;
  final globalProvider = GlobalProviderService.getInstance();

  @override
  void initState() {
    Future.delayed(
      Duration.zero,
      () => provider.changeIndex(widget.children.first.id),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    provider = context.watch<ProductProvider>();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: getHeight(5),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: getWidth(2)),
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {
                    },
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
                    text: "البقالة",
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
                    text: "جميع مقاضيك بمكان واحد اونلاين",
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
            width: getWidth(90),
            height: getHeight(7),
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: const Icon(
                      Icons.search,
                      color: mainGreen,
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          SizedBox(
            height: getHeight(10),
            child: Container(
              margin: EdgeInsets.only(right: getWidth(4)),
              child: CustomScrollableRow(
                children: widget.children
                    .asMap()
                    .entries
                    .map(
                      (e) => TextButton(
                        onPressed: () {
                          provider.changeIndex(e.value.id);
                        },
                        child: CustomText(
                          text: e.value.name,
                          style: const TextStyle(
                            fontSize: 14,
                            fontFamily: mainFont,
                            color: mainOrange,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
          SizedBox(
            height: getHeight(52),
            child: LocalProduct(globalProvider.data),
          ),
        ],
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
