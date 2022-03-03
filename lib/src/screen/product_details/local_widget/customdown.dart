  import 'package:beqala/src/application.dart';
import 'package:beqala/src/common/color.dart';

class Customdown extends StatefulWidget {
  final List<WeightUnit> weightUnits;

  const Customdown(this.weightUnits) ;

  @override
  State<Customdown> createState() => CustomdownState();
}

class CustomdownState extends State<Customdown> {
  @override
  Widget build(BuildContext context) {
    String dropdownvalue =widget.weightUnits[0].weightUnit;
   final List<String>items = widget.weightUnits.map((e) => e.weightUnit).toList();
    return Row(
      children: [
        Container(
          width: getWidth(45),
          height: getHeight(7),
          padding: EdgeInsets.symmetric(
            horizontal: getWidth(5),
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
            onPressed: () {},
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
        SizedBox(
          width: getWidth(10),
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
    );
  }
}
  