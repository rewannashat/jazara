import 'package:flutter/material.dart';
import 'package:jazara/screen/offers_screen.dart';
import 'package:jazara/utilites/const.dart';
import 'package:sizer/sizer.dart';
class OfeersDetails extends StatefulWidget {
  @override
  _OfeersDetailsState createState() => _OfeersDetailsState();
}

class _OfeersDetailsState extends State<OfeersDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('العروض',style: TextStyle(
                      color: Colors.black,
                      fontSize: 17.0.sp,fontFamily: 'Cairo'
                  ),),
                  IconButton(icon: Icon(Icons.arrow_forward_ios_rounded , color: Colors.black,), onPressed: (){
                    Navigator.pop(context);
                  })
                ],),
            ),
            InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Offers() ));
                },
                child: body(context,'assets/images/lkjl.png','إشتر تلت معلبات والرابعة مجانا')),
            SizedBox(height: 15,),
            body(context,'assets/images/bbnnn.png','إشتر تلت معلبات والرابعة مجانا'),
            SizedBox(height: 15,),
            body(context,'assets/images/lkjl.png','إشتر تلت معلبات والرابعة مجانا'),


        ],),
      ),
    );
  }
}
Widget body (BuildContext context , String image , String title){
  return  Material(
    elevation: 5,
    child: Container(
      width: double.infinity,
     color: Color(0xffF6F6F6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image),
          Text(title,style: TextStyle(color: circle , fontSize: 16.0.sp,fontFamily: 'Cairo'),),
        ],),
    ),
  );
}