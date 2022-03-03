  import 'package:beqala/src/application.dart';
import 'package:beqala/src/common/color.dart';

class DrawerButton2 extends StatelessWidget {
  final String text;
  final fanction;

  const DrawerButton2( this.text, this.fanction) ;

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
          border: Border.all(color: mainOrange,),
        ),
        child: Center(
          child: Row(
            children: [
              CustomText(
                text: text,
                style: TextStyle(
                  fontFamily: mainFont,
                  color: mainOrange,
                  fontSize: getWidth(4),
                ),
              ),
              const Spacer(),
              const Icon(Icons.arrow_forward_outlined,color: mainOrange,size: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
  