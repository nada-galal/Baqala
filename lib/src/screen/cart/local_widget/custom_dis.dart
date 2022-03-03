  import 'package:beqala/src/application.dart';
import 'package:beqala/src/common/color.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CustomDis extends StatelessWidget {
final Item item;
late CartProvider provider;
   CustomDis(this.item) ;
  @override
  Widget build(BuildContext context) {
    provider = context.watch<CartProvider>();
    return Column(
      children: [
        Dismissible(
          background: Container(
            color: Theme.of(context).errorColor,
            alignment: Alignment.centerRight,
            margin: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 4,
            ),
            padding: const EdgeInsets.only(right: 20),
            child: const Icon(
              Icons.delete,
              color: Colors.white,
              size: 30,
            ),
          ),
          direction: DismissDirection.endToStart,
          confirmDismiss: (direction) {
            return showDialog(
              context: context,
              builder: (cxt) => AlertDialog(
                title: const Text(
                  "هل انت متاكد من حذف هذا العنصر",
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(cxt).pop(),
                    child: const Text("لا"),
                  ),
                  TextButton(
                    onPressed: () {
                      provider.deleteCartItem(provider.cartId, item.id);
                      Navigator.of(cxt).pop(true);},
                    child: const Text("نعم"),
                  )
                ],
              ),
            );
          },
          onDismissed: (direction) {
          },
          key: const ValueKey(1),
          child: Container(
            width: getWidth(100),
            height: getHeight(14),
            margin:
            EdgeInsets.symmetric(horizontal: getWidth(8)),
            child: Row(
              children: [
                SizedBox(
                  width: getWidth(25),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black12,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: CachedNetworkImage(
                        imageUrl: item.product.imagePath,
                        width: getWidth(20),
                        height: getHeight(15),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: getWidth(40),
                  child: Container(
                    margin: EdgeInsets.only(
                      top: getHeight(1),
                      right: getWidth(2),
                    ),
                    child: Column(
                      children: [
                        CustomText(
                          text: item.product.name,
                          style: TextStyle(
                            fontFamily: mainFont,
                            fontSize: getWidth(3.5),
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 2,
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            CustomText(
                              text: "12 ريال",
                              style: TextStyle(
                                fontFamily: mainFont,
                                fontWeight: FontWeight.bold,
                                fontSize: getWidth(4),
                                color: mainOrange,
                              ),
                            ),
                            const Spacer(),
                            CustomText(
                              text: "كيس",
                              style: TextStyle(
                                fontFamily: mainFont,
                                //fontWeight: FontWeight.bold,
                                fontSize: getWidth(4),
                                color: mainBlue,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: getWidth(19),
                  child: Column(
                    children: [
                      SizedBox(
                        width: getWidth(10),
                        height: getHeight(5),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            backgroundColor: mainGreen,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.circular(10),
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
                      SizedBox(
                        width: getWidth(10),
                        height: getHeight(4),
                        child: Center(
                          child: CustomText(
                            text: "2",
                            style: TextStyle(
                              fontFamily: mainFont,
                              fontSize: getWidth(5),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: getWidth(10),
                        height: getHeight(5),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            backgroundColor: mainGreen,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.circular(10),
                            ),
                          ),
                          child: CustomText(
                            text: "-",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: mainFont,
                              color: Colors.white,
                              fontSize: getWidth(6),
                            ),
                          ),
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
          height: getHeight(3),
          width: getWidth(100),
          margin: EdgeInsets.symmetric(horizontal: getWidth(8)),
          child: const Divider(
            color: Colors.black26,
          ),
        ),
      ],
    );
  }
}
  