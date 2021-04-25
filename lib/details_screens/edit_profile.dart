import 'package:flutter/material.dart';
import 'package:jazara/utilites/const.dart';
import 'package:sizer/sizer.dart';
class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  bool value = false ;
  bool valu = false ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('الإعدادات',style: TextStyle(fontSize: 18.0.sp,fontFamily: 'Cairo'),),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('صفاء أبو وردة',style: TextStyle(color: Colors.black,fontSize: 16.0.sp,fontWeight: FontWeight.bold,fontFamily: 'Cairo'),),
                    Text('+972594480207',style: TextStyle(color: Colors.grey,fontSize: 13.0.sp,fontFamily: 'Cairo'),),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      width: 25.0.w,height: 4.0.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: circle),
                      ),
                      child: Center(child: Text('تعديل',style: TextStyle(color: circle,fontFamily: 'Cairo'),)),
                    ),
                  ],),
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
              color: Color(0xffF6F6F6),
              child: Column(children: [
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('الموقع', style: TextStyle(
                      fontSize: 15.0.sp,fontFamily: 'Cairo'
                    ),),
                    SizedBox(width: 30,),
                    Image.asset('assets/images/locvation.png' ,),
                  ],
                ),
                onTap: () {
                  // Navigator.push(context,MaterialPageRoute(builder: (context){
                  //   return EditProfile();
                  // }
                  // ));
                },
              ),
                Divider(color: Color(0xffDADADA),),
                ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('تغيير الكلمة', style: TextStyle(
                        fontSize: 15.0.sp,fontFamily: 'Cairo'
                      ),),
                      SizedBox(width: 30,),
                      Image.asset('assets/images/Icon .png' ,),
                    ],
                  ),
                  onTap: () {
                    // Navigator.push(context,MaterialPageRoute(builder: (context){
                    //   return EditProfile();
                    // }
                    // ));
                  },
                ),
                Divider(color: Color(0xffDADADA),),
                ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('الطلبات', style: TextStyle(
                        fontSize: 15.0.sp,fontFamily: 'Cairo'
                      ),),
                      SizedBox(width: 30,),
                      Image.asset('assets/images/bbb.png' ,),
                    ],
                  ),
                  onTap: () {
                    // Navigator.push(context,MaterialPageRoute(builder: (context){
                    //   return EditProfile();
                    // }
                    // ));
                  },
                ),
                Divider(color: Color(0xffDADADA),),
                ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('خيارات الدفع', style: TextStyle(
                        fontSize: 15.0.sp,fontFamily: 'Cairo'
                      ),),
                      SizedBox(width: 30,),
                      Image.asset('assets/images/money.png' ,),
                    ],
                  ),
                  onTap: () {
                    // Navigator.push(context,MaterialPageRoute(builder: (context){
                    //   return EditProfile();
                    // }
                    // ));
                  },
                ),
            ],),),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10,left: 240),
          child: Text('الإشعارات',style: TextStyle(
            fontSize: 17.0.sp,fontFamily: 'Cairo'
          ),),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Switch(value: value, onChanged: (v){
              setState(() {
                value = v ;
              });},
              activeColor: circle,
            ),
              Text('اشعارات التطبيق',style: TextStyle(fontSize: 15.0.sp,fontFamily: 'Cairo'),),
          ],),
        ),
        Divider(color: Color(0xffDADADA),),
        Padding(
          padding: const EdgeInsets.only(left: 20,right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Switch(value: valu, onChanged: (v){
                setState(() {
                  valu = v ;
                });},
                activeColor: circle,
              ),
              Text('تتبع الموقع',style: TextStyle(fontSize: 15.0.sp,fontFamily: 'Cairo'),),
            ],),
        ),
      ],),
    );
  }
}
