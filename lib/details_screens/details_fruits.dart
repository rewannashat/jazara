import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jazara/utilites/const.dart';
import 'package:sizer/sizer.dart';
import 'package:flash/flash.dart';
class Fruits extends StatefulWidget {
  @override
  _FruitsState createState() => _FruitsState();
}

class _FruitsState extends State<Fruits> {
  int sum = 1 ;
  @override
  Widget build(BuildContext context) {
    Size siz = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
          backgroundColor:Color(0xffFDE4D5) ,
         body: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 20,right: 7),
              child: IconButton(icon: Icon(Icons.arrow_forward_ios_rounded),onPressed: (){
                Navigator.pop(context);
              },),
            ),
          ),
          Hero(
            tag: '',
              child: Image.asset('assets/images/fsfs.png')),
          SizedBox(height: 25,),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                  Transform.translate(
                      offset: Offset(0,-20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Material(
                          elevation: 3,
                          borderRadius: BorderRadius.circular(10),

                          child: Container(
                            margin: EdgeInsets.only(left: 5,right: 5),
                            width: 13.0.w,
                            height: 6.0.h,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(image: AssetImage('assets/images/hhhhhh.png')),
                            ),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Material(
                          elevation: 3,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            margin: EdgeInsets.only(left: 5,right: 5),
                            width: 13.0.w,
                            height: 6.0.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              image: DecorationImage(image: AssetImage('assets/images/hhhhhh.png')),
                            ),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Material(
                          elevation: 3,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            margin: EdgeInsets.only(left: 5,right: 5),
                            width: 13.0.w,
                            height: 6.0.h,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(image: AssetImage('assets/images/ldf.png')),
                            ),
                          ),
                        ),
                      ],),
                  ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 30.0.w,
                            height: 5.0.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                color: Color(0xffD05E27),
                              ),
                            ),
                            child: Center(
                              child: Text('إضافة ملاحظة',style: TextStyle(
                                color: coolrr,fontFamily: 'Cairo'
                              ),),
                            ),
                          ),
                          Text('تفاح أخضر',style: TextStyle(
                            color: Colors.black,
                            fontSize: 13.0.sp,
                            fontWeight: FontWeight.bold,fontFamily: 'Cairo'
                          ),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,right: 30,top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.favorite,color:Color(0xff707070),),
                          Text('وصف عن ',style: TextStyle(
                            color: Color(0xff707070),
                            fontSize: 15.0.sp,fontFamily: 'Cairo'
                          ),),
                        ],),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('2',style: TextStyle(color: Colors.black,fontFamily: 'Cairo'),),
                          Image.asset('assets/images/lss.png'),
                          SizedBox(width: 10,),
                          Text('السعر لكل كيلو',style: TextStyle(
                            color: Color(0xff5B8683),
                            fontSize: 12.0.sp,
                            fontWeight: FontWeight.bold,fontFamily: 'Cairo'
                          ),),
                        ],),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 5.0.h,
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
                                Text(sum.toString().padLeft(2,'0'),style: TextStyle(color: Colors.black , fontSize: 14.0.sp,fontFamily: 'Cairo'),),
                                IconButton(icon: Icon(Icons.remove), onPressed: (){
                                  setState(() {
                                    if(sum > 1)
                                    sum--;
                                  });
                                }),

                              ],),),
                          Text('الكمية المطلوبة',style: TextStyle(
                            color: Color(0xff5B8683),
                            fontSize: 12.0.sp,
                            fontWeight: FontWeight.bold,fontFamily: 'Cairo'
                          ),),
                        ],
                      ),
                    ),
                    Container(
                      height: 6.0.h,
                      width: 60.0.w,
                      margin: EdgeInsets.only(top: 20,),
                      child: RaisedButton(
                        onPressed: () async {
                          _showBasicsFlash();

                          //  Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPass(),));
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color:Color(0xffD05E27),
                        child: Center(
                          child: Text('أضف إلى السلة',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0.sp,fontFamily: 'Cairo'
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 25,top: 10),
                        child: Text('منتجات مشابهة',style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0.sp,
                          fontWeight: FontWeight.bold,fontFamily: 'Cairo'
                        ),),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 5,right: 5,top: 10),
                          width: 20.0.w,
                          height: 10.0.h,
                          decoration: BoxDecoration(
                            color:Color(0xffCADCDC),
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(image: AssetImage('assets/images/dfgh.png')),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          margin: EdgeInsets.only(left: 5,right: 5,top: 10),
                          width: 20.0.w,
                          height: 10.0.h,
                          decoration: BoxDecoration(
                            color:Color(0xffCADCDC),
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(image: AssetImage('assets/images/gfhg.png')),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          margin: EdgeInsets.only(left: 5,right: 5,top: 10),
                          width: 20.0.w,
                          height: 10.0.h,
                          decoration: BoxDecoration(
                            color:Color(0xffCADCDC),
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(image: AssetImage('assets/images/lkaa.png')),
                          ),
                        ),
                      ],),
                ],),
              ),

            ),
          ),


        ],
      ),
    ));
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
            message: Text('تمت الإضافة بنجاح'),
          ),
        );
      },
    );
  }
}
