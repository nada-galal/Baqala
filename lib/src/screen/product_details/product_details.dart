import 'package:beqala/src/application.dart';
import 'package:beqala/src/common/color.dart';
import 'package:beqala/src/widget/bottom_nav.dart';
import 'package:cached_network_image/cached_network_image.dart';
class ProductDetailsScreen extends StatefulWidget {
  final ProductInfo product;

  const ProductDetailsScreen(this.product);

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  late ProductDetailsProvider provider;
  late String dropdownvalue = widget.product.weightUnits[0].weightUnit;
  late List<String> items =
      widget.product.weightUnits.map((e) => e.weightUnit).toList();
  late double price = double.parse(widget.product.weightUnits
      .firstWhere((element) => element.weightUnit == dropdownvalue)
      .weightPrice,);
  late double startPrice = double.parse(widget.product.weightUnits
      .firstWhere((element) => element.weightUnit == dropdownvalue)
      .startFrom,);
  late double priceFixed = double.parse(widget.product.weightUnits
      .firstWhere((element) => element.weightUnit == dropdownvalue)
      .weightPrice,);
  late double startPriceFixed = double.parse(widget.product.weightUnits
      .firstWhere((element) => element.weightUnit == dropdownvalue)
      .startFrom,);

  @override
  Widget build(BuildContext context) {
    provider = context.watch<ProductDetailsProvider>();
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
                    onPressed: () {
                      selectedIndex = 3;
                      push(CartScreen(), CartProvider());
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
          SizedBox(
            height: getHeight(2),
          ),
          SizedBox(
            height: getHeight(5),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: getWidth(8)),
              child: Row(
                children: [
                  CustomText(
                    text: widget.product.name,
                    style: TextStyle(
                      fontFamily: mainFont,
                      fontWeight: FontWeight.bold,
                      fontSize: getWidth(4),
                      color: mainOrange,
                    ),
                  ),
                  const Spacer(),
                  CustomText(
                    text: price.toString(),
                    style: TextStyle(
                      fontFamily: mainFont,
                      fontWeight: FontWeight.bold,
                      fontSize: getWidth(4),
                      color: mainOrange,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: getHeight(30),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: getWidth(8)),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black26, width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: CachedNetworkImage(
                  imageUrl: widget.product.imagePath,
                ),
              ),
            ),
          ),
          SizedBox(
            height: getHeight(3),
          ),
          SizedBox(
            height: getHeight(12),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: getWidth(8)),
              child: CustomText(
                text: widget.product.description,
                style: TextStyle(
                  fontFamily: mainFont,
                  fontSize: getWidth(4),
                ),
                maxLines: 3,
              ),
            ),
          ),
          SizedBox(
            height: getHeight(3),
          ),
          SizedBox(
            height: getHeight(10),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: getWidth(8)),
              child: Row(
                children: [
                  Container(
                    width: getWidth(45),
                    height: getHeight(7),
                    padding: EdgeInsets.symmetric(
                      horizontal: getWidth(4),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.black12,
                    ),
                    child: DropdownButton(
                      iconSize: getHeight(4),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: mainGreen,
                        fontSize: getHeight(3),
                      ),
                      itemHeight: 50,
                      value: dropdownvalue,
                      icon: Row(
                        children: [
                          SizedBox(
                            width: getWidth(16.4),
                          ),
                          const Icon(
                            Icons.keyboard_arrow_down,
                            color: mainGreen,
                          )
                        ],
                      ),
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: getWidth(5),
                  ),
                  SizedBox(
                    width: getWidth(10),
                    height: getHeight(5),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          price += priceFixed ;
                          startPrice +=startPriceFixed;
                        });
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: mainGreen,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: CustomText(
                        text: "+",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: mainFont,
                          color: Colors.white,
                          fontSize: getWidth(6),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: getWidth(10),
                    child: Center(
                      child: CustomText(
                        text: startPrice.toString(),
                        style: TextStyle(
                          fontFamily: mainFont,
                          fontSize: getWidth(5),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: getWidth(10),
                    height: getHeight(5),
                    child: TextButton(
                      onPressed: () {
                        if(startPrice!= startPriceFixed){
                          setState(() {
                            price -= priceFixed ;
                            startPrice -=startPriceFixed;
                          });
                        }
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: mainGreen,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: CustomText(
                        text: "-",
                        style: TextStyle(
                          fontFamily: mainFont,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: getWidth(6),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: getHeight(3),
          ),
          Container(
            height: getHeight(8),
            width: getWidth(100),
            margin: EdgeInsets.symmetric(horizontal: getWidth(8)),
            child: TextButton(
              onPressed: () {
                provider.addToCart(widget.product.id, widget.product.weightUnits
                    .firstWhere((element) => element.weightUnit == dropdownvalue).id,3 ,);
                push(CartStep2Screen(),CartStep2Provider());
              },
              style: TextButton.styleFrom(
                backgroundColor: mainOrange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(getHeight(2)),
                ),
              ),
              child: Center(
                child: CustomText(
                  text: "اضف الى السلة",
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
