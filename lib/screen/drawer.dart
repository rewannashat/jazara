import 'package:flutter/material.dart';
import 'package:jazara/details_screens/edit_profile.dart';
import 'package:jazara/details_screens/profile.dart';
import 'package:sizer/sizer.dart';
class drawerr extends StatefulWidget {
  @override
  _drawerrState createState() => _drawerrState();
}

class _drawerrState extends State<drawerr> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(icon: Icon(Icons.arrow_forward_ios_rounded , color: Colors.black,), onPressed: (){
                    Navigator.pop(context);
                  })
                ],),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 30,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('صفاء أبو وردة',style: TextStyle(color: Colors.black,fontSize: 16.0.sp,fontWeight: FontWeight.bold,fontFamily: 'Cairo'),),
                      Text('+972594480207',style: TextStyle(color: Colors.grey,fontSize: 13.0.sp,fontFamily: 'Cairo'),),
                    ],),
                ),
                  Image.asset('assets/images/logo_.png',width: 30.0.w,height: 15.0.h,),
              ],),
            ),
            SizedBox(height: 20,),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('الملف الشخصي', style: TextStyle(
                    fontSize: 15.0.sp,fontFamily: 'Cairo'
                  ),),
                  SizedBox(width: 30,),
                  Image.asset('assets/images/user.png' ,),
                ],
              ),
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context){
                  return Profile();
                }
                ));
              },
            ),
            Divider(color: Color(0xffDADADA),),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('فواتير الشراء', style: TextStyle(
                    fontSize: 15.0.sp,fontFamily: 'Cairo'
                  ),),
                  SizedBox(width: 30,),
                  Image.asset('assets/images/bill.png' ,),
                ],
              ),
              onTap: () {
                // Navigator.push(context,MaterialPageRoute(builder: (context){
                //   return ;
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
                  Image.asset('assets/images/payment.png' ,),
                ],
              ),
              onTap: () {
                // Navigator.push(context,MaterialPageRoute(builder: (context){
                //   return ;
                // }
                // ));
              },
            ),
            Divider(color: Color(0xffDADADA),),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('فريق الدعم', style: TextStyle(
                    fontSize: 15.0.sp,fontFamily: 'Cairo'
                  ),),
                  SizedBox(width: 30,),
                  Image.asset('assets/images/solid.png' ,),
                ],
              ),
              onTap: () {
                // Navigator.push(context,MaterialPageRoute(builder: (context){
                //   return ;
                // }
                // ));
              },
            ),
            Divider(color: Color(0xffDADADA),),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('الاعدادات', style: TextStyle(
                    fontSize: 15.0.sp,fontFamily: 'Cairo'
                  ),),
                  SizedBox(width: 30,),
                  Image.asset('assets/images/settings.png' ,),
                ],
              ),
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context){
                  return EditProfile();
                }
                ));
              },
            ),
            Divider(color: Color(0xffDADADA),),

          ],
        ),
      ),
    );
  }
}
