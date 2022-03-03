  import 'package:beqala/src/application.dart';
import 'package:beqala/src/common/color.dart';

class CustomCart extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: getHeight(6),
          width: getWidth(100),
          margin: EdgeInsets.symmetric(horizontal: getWidth(8)),
          child: const Divider(
            color: Colors.black26,
          ),
        ),
        SizedBox(
          height: getHeight(6),
          width: getWidth(100),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: getWidth(8)),
            child: Row(
              children: [
                Container(
                  width: getWidth(50),
                  padding: EdgeInsets.symmetric(horizontal: getWidth(3)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(getWidth(3)),
                    color: Colors.black12,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "ادخل كود الخصم",
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        fontFamily: mainFont,
                        color: Colors.black,
                        fontSize: getWidth(4),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  width: getWidth(15),
                  height: getHeight(7),
                  decoration: BoxDecoration(
                    color: mainOrange,
                    borderRadius: BorderRadius.circular(getWidth(4)),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: const Icon(
                      Icons.arrow_forward_outlined,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ),
                const Spacer(),
                CustomText(
                  text: "12 ريال",
                  style: TextStyle(
                    fontFamily: mainFont,
                    fontWeight: FontWeight.bold,
                    fontSize: getWidth(5),
                    color: mainOrange,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: getHeight(5),
          width: getWidth(100),
          margin: EdgeInsets.symmetric(horizontal: getWidth(8)),
          child: const Divider(
            color: Colors.black26,
          ),
        ),
        SizedBox(
          height: getHeight(6),
          width: getWidth(100),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: getWidth(8)),
            child: Row(
              children: [
                Container(
                  width: getWidth(50),
                  padding: EdgeInsets.symmetric(horizontal: getWidth(3)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(getWidth(3)),
                    color: Colors.black12,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "ادخل كود الخصم",
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        fontFamily: mainFont,
                        color: Colors.black,
                        fontSize: getWidth(4),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  width: getWidth(15),
                  height: getHeight(7),
                  decoration: BoxDecoration(
                    color: mainOrange,
                    borderRadius: BorderRadius.circular(getWidth(4)),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: const Icon(
                      Icons.arrow_forward_outlined,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ),
                const Spacer(),
                CustomText(
                  text: "12 ريال",
                  style: TextStyle(
                    fontFamily: mainFont,
                    fontWeight: FontWeight.bold,
                    fontSize: getWidth(5),
                    color: mainOrange,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: getHeight(6),
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
  