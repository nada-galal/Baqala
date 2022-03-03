  import 'package:beqala/src/application.dart';
import 'package:beqala/src/common/color.dart';

class DrawerButton extends StatelessWidget {
final String text;
final fanction ;

  const DrawerButton( this.text, this.fanction) ;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: fanction,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: getWidth(5)),
        padding: EdgeInsets.only(right: getWidth(8),left: getWidth(5)),
        height: getHeight(7),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black12,
        ),
        child: Center(
          child: Row(
            children: [
              CustomText(
                text: text,
                style: TextStyle(
                  fontFamily: mainFont,
                  color: mainGreen,
                  fontSize: getWidth(4.5),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              const Icon(Icons.arrow_forward_outlined,color: mainGreen,size: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
  