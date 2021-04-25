import 'package:flutter/material.dart';
import 'package:jazara/utilites/const.dart';
import 'package:jazara/utilites/data_search.dart';
import 'package:sizer/sizer.dart';

import 'details_fruits.dart';
class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('الفواكه',style: TextStyle(
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
                showSearch(context: context, delegate: DataSearch());
              },
              child: Container(
                margin: EdgeInsets.only(top: 10),
                width: 85.0.w,
                height: 6.0.h,
                decoration: BoxDecoration(
                  color: Kcolors,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20,right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Icon(Icons.search,color: Color(0xff707070),),
                    Text('إبحث عن منتج',style: TextStyle(
                      color: Color(0xffACACAC),
                      fontSize: 16.0.sp
                    ),),

                  ],),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  grid (Color(0xffFDE4D5),'موز',AssetImage('assets/images/f.png'),Color(0xffFEF2EB),context),
                  grid (Color(0xffCADCDC),'مشمش',AssetImage('assets/images/ssss.png'),Color(0xffF3F9EE),context),
                ],),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  grid (Color(0xffFDE4D5),'تفاح',AssetImage('assets/images/jj.png'),Color(0xffFEF2EB),context),
                  grid (Color(0xffCADCDC),'موز',AssetImage('assets/images/f.png'),Color(0xffF3F9EE),context),
                ],),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  grid (Color(0xffFDE4D5),'موز',AssetImage('assets/images/f.png'),Color(0xffFEF2EB),context),
                  grid (Color(0xffCADCDC),'مشمش',AssetImage('assets/images/ssss.png'),Color(0xffF3F9EE),context),
                ],),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  grid (Color(0xffFDE4D5),'تفاح',AssetImage('assets/images/jj.png'),Color(0xffFEF2EB),context),
                  grid (Color(0xffCADCDC),'موز',AssetImage('assets/images/f.png'),Color(0xffF3F9EE),context),
                ],),
            )
          ],
        ),
      ),
    ));
  }
}
Widget grid (Color color , String title , AssetImage image,Color colors,BuildContext context){
  return InkWell(
    onTap: (){
      Navigator.push(context,MaterialPageRoute(builder: (context) => Fruits(),));
    },
    child: Container(
      width: 35.0.w,
      height: 23.0.h,
      decoration: BoxDecoration(
        color: color,//Color(0xffCADCDC),
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image:image,),//AssetImage('assets/images/ssss.png')
      ),
      child: Row(
        children: [
        Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Stack(
                children: [
                  Container(
                    width: 8.0.w,
                    height: 5.0.h,
                    decoration: BoxDecoration(
                      color:colors, //Color(0xffFEF2EB),
                      borderRadius: BorderRadius.only(
                        //topRight: Radius.circular(20),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Icon(Icons.favorite,),
                  )
                ],

              ),
            ),
            SizedBox(height: 104,),
            Align(
              alignment: Alignment.bottomLeft,
              child: Stack(
                children: [
                  Container(
                    width: 8.0.w,
                    height: 5.0.h,
                    decoration: BoxDecoration(
                      color: colors,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        //bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Icon(Icons.add,),
                  )
                ],

              ),
            ),
          ],
        ),
          Padding(
            padding: const EdgeInsets.only(top: 125,left: 35),
            child: Column(
              children: [
              Text(title,style: TextStyle(
                color: Colors.black,
                fontSize: 13.0.sp,fontFamily: 'Cairo'
              ),),
              Text('3\$/KG',style: TextStyle(
                color: Colors.black,
                fontSize: 13.0.sp,fontFamily: 'Cairo'
              ),)
            ],),
          ),
      ],),
    ),
  );
}