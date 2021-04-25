import 'package:flash/flash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jazara/utilites/const.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_custom_dialog/flutter_custom_dialog.dart';
class Offers extends StatefulWidget {
  @override
  _OffersState createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  int sum = 1 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10,),
                    child: Text('عرض 2 في واحد',style: TextStyle(
                        color: circle,
                        fontSize: 17.0.sp,
                        fontWeight: FontWeight.bold,fontFamily: 'Cairo'
                    ),),
                  ),
                  IconButton(icon: Icon(Icons.arrow_forward_ios_rounded , color: Colors.black,), onPressed: (){
                    Navigator.pop(context);
                  })
                ],),
            ),
              Container(
                color: Color(0xffE4E4E4),
                  child: Image.asset('assets/images/lkgf.png',fit: BoxFit.cover,)),
              Transform.translate(
                offset: Offset(0,-15),
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight:Radius.circular(10) ),
                  child: Container(
                    width: 90.0.w,
                    height: 18.0.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight:Radius.circular(10) ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Transform.translate(
                          offset: Offset(0,-15),
                          child: Material(
                            elevation: 5,
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight:Radius.circular(10) ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight:Radius.circular(10) ),
                              ),
                              width: 40.0.w,height: 7.0.h,
                              child: Column(children: [
                                Text('عداد ساعات انتهاء العرض',style: TextStyle(
                                  color: circle,
                                  fontSize: 10.0.sp,fontFamily: 'Cairo'
                                ),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      height: 25,width: 25,
                                      color: circle,
                                      child: Center(child: Text(DateTime.now().hour.toString(),style: TextStyle(color: Colors.white,fontFamily: 'Cairo'),)),

                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      height: 25,width: 25,
                                      color: circle,
                                      child: Center(child: Text(DateTime.now().minute.toString(),style: TextStyle(color: Colors.white,fontFamily: 'Cairo'))),

                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      height: 25,width: 25,
                                      color: circle,
                                      child: Center(child: Text(DateTime.now().second.toString(),style: TextStyle(color: Colors.white,fontFamily: 'Cairo'))),

                                    ),


                                  ],
                                )
                              ],),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 20.0.w,
                              margin: EdgeInsets.only(left: 20,right: 20,),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: coolrr,
                                  )
                              ),
                              child: Center(child: Text('شراء',style: TextStyle(color: coolrr,fontSize: 14.0.sp,fontFamily: 'Cairo'),),),
                            ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20),
                            child: Text('عرض 2 في 1',style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.0.sp,fontFamily: 'Cairo'
                            ),),
                          ),

                        ],),
                        Padding(
                          padding: const EdgeInsets.only(left: 45,right: 35,top: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.favorite,color:Color(0xff707070) ,),
                            Text('عرض خاص على البهارات المحلية',style: TextStyle(
                              color: Color(0xff707070),fontFamily: 'Cairo'
                            ),),
                          ],),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right:20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 5.0.h,width: 33.0.w,
                      margin: EdgeInsets.only(left: 20,right: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: Color(0xffD8D8D8),
                          )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(icon: Icon(Icons.add), onPressed: (){
                            setState(() {
                              sum++;
                            });
                          }),
                          Text( sum.toString().padLeft(2,'0'),style: TextStyle(color: Colors.black , fontSize: 15.0.sp,fontFamily: 'Cairo'),),
                          IconButton(icon: Icon(Icons.remove), onPressed: (){
                            setState(() {
                              if(sum > 1)
                              sum--;
                            });
                          }),

                        ],),),
                    Text('الكمية المطلوبة',style: TextStyle(
                      color: Color(0xff5B8683),
                      fontSize: 13.0.sp,
                      fontWeight: FontWeight.bold,fontFamily: 'Cairo'
                    ),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,right:20,top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 113,),
                      child: Icon(Icons.location_on , color: coolrr,size: 25.0.sp,)
                    ),
                   Row(children: [
                     Icon(Icons.edit,color: Color(0xff707070),),
                     Padding(
                       padding: const EdgeInsets.only(left: 10,right: 20),
                       child: Text('تعديل عنوان التوصيل',style: TextStyle(
                         color: circle,
                         fontSize: 13.0.sp,fontFamily: 'Cairo',
                       ),),
                     ),
                   ],)
                  ],
                ),
              ),
              Container(
                height: 6.0.h,
                width: 60.0.w,
                margin: EdgeInsets.only(top: 20,),
                child: RaisedButton(
                  onPressed: () async {
                    // showDialog(
                    //     context: context,
                    //     builder: (BuildContext context) {
                    //       return new AlertDialog(
                    //           shape: RoundedRectangleBorder(
                    //           borderRadius:
                    //           BorderRadius.all(
                    //           Radius.circular(10.0))),
                    //          content: Builder(
                    //          builder: (context) {
                    //       return Container(
                    //         height: 30.0.h,
                    //         child: Column(
                    //           mainAxisAlignment: MainAxisAlignment.center,
                    //           children: [
                    //           Image.asset('assets/images/bnn.png'),
                    //           SizedBox(height: 10,),
                    //           Text('تم إضافة الطلب',style: TextStyle(
                    //             color: circle,fontFamily: 'Cairo'
                    //           ),)
                    //         ],),
                    //          );
                    //       },
                    //       ),);
                    //     });
                    _showBasicsFlash();
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color:Color(0xffD05E27),
                  child: Center(
                    child: Text('إطلب الان',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0.sp,fontFamily: 'Cairo'
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Divider(color: Color(0xff707070),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 250,right: 10),
                child: Text('التوصيات',style: TextStyle(color: Colors.black , fontSize: 17.0.sp ,fontFamily: 'Cairo', fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 17),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  Image.asset('assets/images/sdddd.png'),
                  SizedBox(width: 10,),
                  Image.asset('assets/images/vvvv.png'),

                ],),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void _showBasicsFlash({
    // Duration  duration,
    flashStyle = FlashStyle.floating,
  }) {
    showFlash(
      context: context,
      duration: const Duration(seconds: 3),
      builder: (context, controller) {
        return Flash(
          controller: controller,
          style: flashStyle,
          backgroundColor: Colors.grey,
          brightness: Brightness.light,
          //position: FlashPosition.top,
          boxShadows: kElevationToShadow[10],
          horizontalDismissDirection: HorizontalDismissDirection.horizontal,
          child: FlashBar(
            message: Text('تم إضافة الطلب'),
          ),
        );
      },
    );
  }


}
