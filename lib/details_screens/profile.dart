import 'package:flutter/material.dart';
import 'package:jazara/utilites/const.dart';
import 'package:sizer/sizer.dart';

import 'edit_profile.dart';
class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('الملف الشخصي',style: TextStyle(fontSize: 18.0.sp,fontFamily: 'Cairo'),),
              SizedBox(width: 30,),
              IconButton(icon: Icon(Icons.arrow_forward_ios_rounded , color: Colors.black,), onPressed: (){
                Navigator.pop(context);
              })
            ],),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10,right: 40,),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Icon(Icons.delete,color: Colors.red,),
              ),
              Image.asset('assets/images/logo_.png',width: 30.0.w,height: 15.0.h,),
            ],),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10,left: 240),
          child: Text('الحساب',style: TextStyle(
            fontSize: 17.0.sp,fontFamily: 'Cairo'
          ),),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15,right: 15),
          child: Material(
            elevation: 3,
            child: Container(
              height: 20.0.h,
              color: Color(0xffF6F6F6),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text('صفاء أبو وردة',style: TextStyle(fontFamily: 'Cairo')),
                Divider(color: Color(0xffDADADA),),
                Text('+972594480207',style: TextStyle(fontFamily: 'Cairo')),
                Divider(color: Color(0xffDADADA),),
                Text('sofea.qwe12@gmail.com',style: TextStyle(fontFamily: 'Cairo')),
                Divider(color: Color(0xffDADADA),),
              ],),),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          width: 70.0.w,height: 7.0.h,
          decoration: BoxDecoration(
            border: Border.all(color: circle),
            borderRadius: BorderRadius.circular(25),
          ),
          child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile(),));
              },
              child: Center(child: Text('تعديل الملف الشخصي',style: TextStyle(color: circle , fontSize: 16.0.sp,fontFamily: 'Cairo'),))),
        ),
      ],),
    );
  }
}
