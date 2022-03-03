import 'package:beqala/src/application.dart';
import 'package:beqala/src/common/color.dart';
import 'package:cached_network_image/cached_network_image.dart';

class LocalProduct extends StatelessWidget {
  final List<ProductInfo> data;

  const LocalProduct(this.data);

  @override
  Widget build(BuildContext context) {
    return data.isEmpty
        ? const Center(child: CircularProgressIndicator())
        : GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3,
      ),
      children: data
          .asMap()
          .entries
          .map(
            (e) =>
            GestureDetector(
              onTap: () =>
                  push(ProductDetailsScreen(e.value), ProductDetailsProvider())
              ,
              child: Center(
                child: Column(
                  children: [
                    Container(
                      width: getWidth(40),
                      height: getHeight(22),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(getWidth(4)),
                        border: Border.all(color: Colors.black12, width: 2),
                      ),
                      child: Center(
                        child: CachedNetworkImage(
                          imageUrl: e.value.imagePath,
                          width: getWidth(20),
                          height: getHeight(20),
                        ),
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        width: getWidth(40),
                        child: CustomText(
                          text: e.value.name,
                          style: TextStyle(
                              fontSize: getWidth(4), fontFamily: mainFont),
                          maxLines: 2,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: getHeight(5.5),
                      child: Container(
                        padding:
                        EdgeInsets.symmetric(horizontal: getWidth(3)),
                        child: Row(
                          children: [
                            const CustomText(
                              text: "10ريال",
                              style: TextStyle(
                                fontFamily: mainFont,
                                color: mainOrange,
                                fontSize: 15,
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                getImage("navigationBar/cart.png"),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
      )
          .toList(),
    );
  }
}
