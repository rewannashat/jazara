import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jazara/utilites/const.dart';
import 'package:jazara/utilites/data_search.dart';
import 'package:sizer/sizer.dart';
import 'package:jazara/details_screens/list_home.dart';

import 'drawer.dart';

class homee extends StatefulWidget {
  @override
  _homeeState createState() => _homeeState();
}

class _homeeState extends State<homee> {
  List<myImage> data = [
    myImage(image: 'assets/images/Group 211.png'),
    myImage(image: 'assets/images/Group 210.png'),
    myImage(image: 'assets/images/Group 211.png'),
    myImage(image: 'assets/images/Group 210.png'),
  ];
  int index=0  ;
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> drawerKeey = GlobalKey();
    return Scaffold(
      //key: drawerKeey,
      drawer: drawerr(),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(icon: Icon(Icons.menu,size: 8.0.w,),
                        onPressed: (){
                          drawerKeey.currentState.openDrawer();
                        },
                        ),
                        SizedBox(width: 5,),
                        Stack(children:[
                          Image.asset('assets/images/Icon.png'),
                          Image.asset('assets/images/Ellipse 259.png'),

                        ]),
                      ],
                    ),
                    Text('أهلا بك',style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0.sp,fontFamily: 'Cairo'
                    ),)
                  ],
                ),
              ),
              Transform.translate(
                offset: Offset(0,-10),
                child: Container(
                  height: 190,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      PageView(
                        onPageChanged: (value){
                          setState(() {
                            index = value ;
                            log('index=>$index');
                          });
                        },
                        children:
                        data.map((item) => Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: ExactAssetImage(item.image),
                              // fit: BoxFit.cover
                            ),
                          ),
                        )).toList(),

                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          child: Center(
                            child: Circle(index),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Material(
                  elevation: 3,
                  borderRadius: BorderRadius.circular(20),
                  child: InkWell(
                    onTap: (){
                      showSearch(context: context, delegate: DataSearch());
                    },
                    child: Container(
                      //margin: EdgeInsets.only(left: 15,right: 15),
                      width: 85.0.w,
                      height: 6.0.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow:[
                          BoxShadow(color: Colors.grey,
                          //  blurRadius: 2.0,
                           // spreadRadius: 2.0,
                          ),
                        ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('assets/images/material.png'),
                            Image.asset('assets/images/Isearch.png'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

              ),
              Padding(
                padding: const EdgeInsets.only(left: 30,right: 30,top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text('المزيد',style: TextStyle(
                          color:coolrr,
                          fontSize: 12.0.sp,fontFamily: 'Cairo'
                        ),),
                        Container(
                          height: 4,
                          width: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xffD05E27),
                          ),
                        ),
                      ],
                    ),
                    Text('العروض الأكثر طلباً',style: TextStyle(
                      fontSize: 13.0.sp,
                      fontWeight: FontWeight.bold,fontFamily: 'Cairo'
                    ),)
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Cont('assets/images/kk.png','بهارات'),
                      Cont('assets/images/rrl.png','لوز محمص'),
                      Cont('assets/images/kk.png','بهارات'),
                      Cont('assets/images/rrl.png','لوز محمص '),

                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30,top: 5),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text('المنتجات الأكثر طلباً',style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.0.sp,
                    fontWeight: FontWeight.bold,fontFamily: 'Cairo'
                  ),),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    ListHome('assets/images/uuuu.png','لوز محمص'),
                    Divider( color: Color(0xff707070),),
                    ListHome('assets/images/kkkk.png','لوز محمص',),
                    Divider( color: Color(0xff707070),),
                    ListHome('assets/images/llllllllll.png','لوز محمص',),
                    Divider( color: Color(0xff707070),),
                    ListHome('assets/images/uuuu.png','لوز محمص'),
                    Divider( color: Color(0xff707070),),
                    ListHome('assets/images/uuuu.png','لوز محمص'),

                  ],
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}
class myImage {
  String image ;
  myImage({this.image});
}
class Circle extends StatelessWidget {
  int i ;
  Circle(this.i);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildContainer(i==0?circle:Colors.white),
        buildContainer(i==1?circle:Colors.white),
        buildContainer(i==2?circle:Colors.white),
        buildContainer(i==3?circle:Colors.white),
      ],
    );
  }

  Container buildContainer(Color color) {
    return Container(
      margin: EdgeInsets.all(5),
      width: 12,
      height: 15,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color:color,
      ),
    );
  }


}
Widget Cont (String image , String title){
  return Container(
    margin: EdgeInsets.only(left: 10,right: 10),
    height: 24.0.h,
    width: 39.0.w,
    decoration: BoxDecoration(
      border: Border.all(
        color: Color(0xff707070),
      ),
      borderRadius: BorderRadius.circular(8),
    ),
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 5),
          width:33.0.w,
          height: 10.0.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: Color(0xffEBBBA4),
          ),
          child:Image.asset(image,),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 6,right: 3,top: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 12.0.w,
                height: 3.0.h,
                decoration: BoxDecoration(
                  color: coolrr,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('4.8',style: TextStyle(
                        color: Colors.white,
                        fontSize: 8.0.sp
                    ),),
                    Icon(Icons.star , color: Colors.white,size: 8.0.sp,),
                  ],
                ),
              ),
              Text(title,style: TextStyle(
                color: Colors.black,
                fontSize: 10.0.sp,fontFamily: 'Cairo'
              ),),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5,right:5),
          child: Text('الوصف',style: TextStyle(
            color: Colors.grey,
            fontSize: 14.0.sp,fontFamily: 'Cairo'
          ),),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 7,right: 5,),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 10,
                child:Icon(Icons.add , size: 14.0.sp,color: Colors.white,) ,
              ),
              Text('\$34.00' , style: TextStyle(
                color: Colors.black,
                fontSize: 14.0.sp,fontFamily: 'Cairo'
              ),)
            ],
          ),
        ),



      ],
    ),

  );
}
