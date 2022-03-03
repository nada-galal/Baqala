  import 'package:beqala/src/application.dart';
import 'package:beqala/src/common/color.dart';

class CustomButton extends StatelessWidget {
final String text;
final fanct ;

  const CustomButton( this.text, this.fanct) ;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getHeight(7),
      width: getWidth(100),
      margin: EdgeInsets.symmetric(horizontal: getWidth(8)),
      child: TextButton(
        onPressed: fanct,
        style: TextButton.styleFrom(
          backgroundColor: mainOrange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(getHeight(2)),
          ),
        ),
        child: Center(
          child: CustomText(
            text: text,
            style: TextStyle(
              fontFamily: mainFont,
              color: Colors.white,
              fontSize: getWidth(5),
            ),
          ),
        ),
      ),
    );
  }
}
  