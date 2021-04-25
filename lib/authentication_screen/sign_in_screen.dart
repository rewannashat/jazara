import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jazara/utilites/const.dart';
import 'package:sizer/sizer.dart';

import 'forget_password_screen.dart';
class SignIn extends StatefulWidget {
  static const id = "idSign";
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  List<String>list = ['+972' , '+970','208'];
  String chose ;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Image.asset('assets/images/Asset 1.png'),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text('أدخل رقم الهاتف الخاص بك',style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0.sp,
                    fontFamily: 'Cairo'
                ),),
              ),
              Text('أدخل رقم هاتفك في الخانة لنتمكن من\nارسال رمز التأكيد الخاص بك',
               textAlign: TextAlign.center,
                style: TextStyle(
                color: Colors.grey,
                fontSize: 13.0.sp,
                    fontFamily: 'Cairo'
              ),),
              SizedBox(height: 10,),
              Material(
                elevation: 5,
                child: Container(
                 // margin: EdgeInsets.only(top: 20),
                  height: 15.0.h,
                  width: 43.0.h,
                  color: Color(0xffF6F6F6),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15,right: 15),
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: InputBorder.none,
                          labelText: 'رقم الهاتف',
                          labelStyle: TextStyle(
                              color: Colors.red,
                              fontSize: 13.0.sp,
                              height: 0.6
                          ),
                          hintText: '|'+'\t 0-000-00-0000',
                          hintStyle:  TextStyle(color: Color(0xff707070), fontSize: 12.0.sp,),
                          prefix: Container(
                            height: 3.0.h,
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                onChanged: (val){
                                  setState(() {
                                    chose = val;
                                  });
                                },
                                value: chose,
                                items: list.map((item) {
                                  return DropdownMenuItem(
                                      value: item, child: Text(item));
                                }).toList(),
                              ),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: new BorderSide(color:  Color(0xffAFAFAF)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: new BorderSide(color:Color(0xffAFAFAF)),
                          ),),
                        keyboardType: TextInputType.number,
                        cursorColor: Color(0xffAFAFAF),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 6.0.h,
                width: 50.0.w,
                margin: EdgeInsets.only(top: 10,right: 20,left: 5),
                child: RaisedButton(
                  onPressed: () async {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ForgetPass(),));
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color:Color(0xffD05E27),
                  child: Center(
                    child: Text('تأكيد الرقم',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0.sp,
                          fontFamily: 'Cairo'
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
                    Text('  سياسات الخصوصية والتراخيص   ' , style: TextStyle(
                      color: Color(0xffD05E27),
                      fontSize: 13.0.sp,
                      fontWeight: FontWeight.bold,
                        fontFamily: 'Cairo'
                    ),),
                    Text('\tأنت توافق على ',style: TextStyle(
                      color: Color(0xff707070),
                        fontFamily: 'Cairo'
                    ),),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
