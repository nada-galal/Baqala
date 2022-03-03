  import 'package:beqala/src/application.dart';
import 'package:beqala/src/common/color.dart';
import 'package:beqala/src/widget/custom_button.dart';
import 'package:beqala/src/widget/custom_text_field.dart';
import 'package:beqala/src/widget/main_drawer.dart';


class ContactUsScreen extends StatelessWidget {
  late ContactUsProvider provider;
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    provider = context.watch<ContactUsProvider>();
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
                    text: "تواصل معنا...",
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
                    text: "سيتم التواصل معكم فور استلام رسائلكم",
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
            height: getHeight(7),
            margin: EdgeInsets.symmetric(horizontal: getWidth(8)),
            child: Row(
              children: [
                Container(
                  width: getWidth(40),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: mainGreen,
                  ),
                  child: const Center(child: Icon(Icons.whatshot,color: Colors.white,),),
                ),
                const Spacer(),
                Container(
                  width: getWidth(40),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: mainBlue,
                  ),
                  child: const Center(child: Icon(Icons.phone,color: Colors.white,),),
                ),
              ],
            ),
          ),
          SizedBox(height: getHeight(3),),
          SizedBox(
            height: getHeight(60),
            child: Form(
              key: _globalKey,
              child: ListView(
                children: [
                  SizedBox(
                    height: getHeight(7),
                    child: CustomTextField(hint: "   اسم العميل", onClick: (value){
                      provider.name = value ;
                    },
                      icon: Icons.person,),
                  ),
                  SizedBox(height: getHeight(3),),
                  SizedBox(
                    height: getHeight(7),
                    child: CustomTextField(hint: "   رقم الجوال", onClick: (value){
                      provider.phone = value ;
                    },
                      icon: Icons.phone_android_outlined,),
                  ),
                  SizedBox(height: getHeight(3),),
                  SizedBox(
                    width: getWidth(25),
                    child: CustomTextField(hint: "الرسالة", onClick: (value){
                      provider.message = value;
                    },),
                  ),
                  SizedBox(height: getHeight(10),),
                  CustomButton("ارسال",(){
                    if(_globalKey.currentState!.validate()){
                      _globalKey.currentState!.save();
                      provider.contactUs(provider.name, provider.phone, provider.message);
                    }
                  }),
                ],
              ),
            ),
          ),


        ],
      ),
      drawer: MainDrawer(),
    );
  }
}
  