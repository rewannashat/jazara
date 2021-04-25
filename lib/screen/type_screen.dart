import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:jazara/utilites/const.dart';
import 'package:jazara/details_screens/detail_type_screen.dart';
import 'package:jazara/details_screens/offers_details.dart';
import 'package:jazara/model/type_model.dart';
import 'home_screen.dart';

class Type extends StatefulWidget {
  @override
  _TypeState createState() => _TypeState();
}

class _TypeState extends State<Type> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('التصنيفات',style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.0.sp,fontFamily: 'Cairo'
                ),),
                IconButton(icon: Icon(Icons.arrow_forward_ios_rounded , color: Colors.black,), onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),));
                })
              ],),
          ),
          SizedBox(height: 20,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 300,
                   childAspectRatio: 3 / 2,
                    crossAxisSpacing:30,
                    mainAxisSpacing: 40,
                ),
                itemCount: list.length,
                itemBuilder: (context, index) =>material(list[index].Image , list[index].name,()=> Navigator.push(context, MaterialPageRoute(builder: (context) => Details(),))) ,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
Widget material (String image , String title,Function press){
  return  InkWell(
    onTap: press,
    child: Material(
      elevation: 8,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: 30.0.w,
        height: 15.0.h,
        decoration: BoxDecoration(
          color: gridd,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image),
            Text(title,textAlign: TextAlign.center,style: TextStyle(color: Colors.black, fontSize: 15.0.sp ,fontFamily: 'Cairo'),),
          ],),
      ),
    ),
  );
}
/*
Widget Typee (BuildContext context){
  //final mSize = MediaQuery.of(context).size;
  return Container(
    child:Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('التصنيفات',style: TextStyle(
                  color: Colors.black,
                  fontSize: 17.0.sp,fontFamily: 'Cairo'
              ),),
              IconButton(icon: Icon(Icons.arrow_forward_ios_rounded , color: Colors.black,), onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),));
              })
            ],),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              material('assets/images/vvv.png', 'الخضراوات',()=> Navigator.push(context, MaterialPageRoute(builder: (context) => Details(),))),
              material('assets/images/kkkkk.png', 'الفواكه',()=> Navigator.push(context, MaterialPageRoute(builder: (context) => Details(),))),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            material('assets/images/dddd.png', 'لحوم',()=> Navigator.push(context, MaterialPageRoute(builder: (context) => Details(),))),
            material('assets/images/bb.png', 'حلويات',()=> Navigator.push(context, MaterialPageRoute(builder: (context) => Details(),))),
          ],),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            material('assets/images/lllllllll.png', 'مخبوزات',()=> Navigator.push(context, MaterialPageRoute(builder: (context) => Details(),))),
            material('assets/images/d.png', 'أسماك',()=> Navigator.push(context, MaterialPageRoute(builder: (context) => Details(),))),
          ],),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            material('assets/images/Mask Group 32.png', 'مواد تنظيف',()=> Navigator.push(context, MaterialPageRoute(builder: (context) => Details(),))),
            material('assets/images/Mask Group 34.png', 'مشروبات ',()=> Navigator.push(context, MaterialPageRoute(builder: (context) => Details(),))),
          ],),
      ],
    ),
  );

}
Widget material (String image , String title,Function press){
  return  InkWell(
    onTap: press,
    child: Material(
      elevation: 8,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: 30.0.w,
        height: 15.0.h,
        decoration: BoxDecoration(
          color: gridd,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image.asset(image),
          Text(title,textAlign: TextAlign.center,style: TextStyle(color: Colors.black, fontSize: 15.0.sp ,fontFamily: 'Cairo'),),
        ],),
      ),
    ),
  );
}*/