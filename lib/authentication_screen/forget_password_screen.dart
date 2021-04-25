import 'package:flutter/material.dart';
import 'package:jazara/screen/home.dart';
import 'package:jazara/screen/home_screen.dart';
import 'package:jazara/utilites/otp_field.dart';
import 'package:sizer/sizer.dart';

import 'new_login_screen.dart';
class ForgetPass extends StatefulWidget {
  @override
  _ForgetPassState createState() => _ForgetPassState();
}

class _ForgetPassState extends State<ForgetPass> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          Image.asset('assets/images/Asset 3.png'),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text('أدخل رمز التأكيد',style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 15.0.sp,
                fontFamily: 'Cairo'
            ),),
          ),
          Text('أدخل رمز التأكيد المكون من 4 \nخانات المرسل على الرقم +97254804207',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12.0.sp, fontFamily: 'Cairo'
            ),),
          Container(
            margin: EdgeInsets.only(top: 20),
            height: 10.0.h,
            width: 40.0.h,
            decoration: BoxDecoration(
              color: Color(0xffF6F6F6),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: row(),

            ),
          ),
          Container(
            height: 6.0.h,
            width: 50.0.w,
            margin: EdgeInsets.only(top: 10,right: 20,left: 5),
            child: RaisedButton(
              onPressed: () async {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),));
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color:Color(0xffD05E27),
              child: Center(
                child: Text('تأكيد',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0.sp,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
                  },
                  child: Text('أعد إرسال الرمز' , style: TextStyle(
                    color: Color(0xffD05E27),
                    fontSize: 13.0.sp,
                    fontWeight: FontWeight.bold,
                      fontFamily: 'Cairo'
                  ),),
                ),
                Text('\tلم يصلك رمز؟ ',style: TextStyle(
                  color: Color(0xff707070),
                    fontFamily: 'Cairo'
                ),),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
Widget NumberInput (){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('3'),
          Container(
            height: 4,
            width: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xffD05E27),
            ),
          )

        ],
      ),
      SizedBox(width: 10,),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('5'),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xffD05E27),
            ),
            height: 4,
            width: 30,
          )

        ],
      ),
      SizedBox(width: 10,),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('6'),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xffD05E27),
            ),
            height: 4,
            width: 30,
          )

        ],
      ),
      SizedBox(width: 10,),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('7'),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xffD05E27),
            ),
            height: 4,
            width: 30,
          )

        ],
      ),
    ],
  );
}
Widget row (){
  return Directionality(
    textDirection: TextDirection.ltr,
    child: Align(
        alignment: Alignment.center,
        child: OTPTextField(
          length: 4,
          width: 200,
          onChanged: (value) {
            print(value);
          },
        )),
  );
}