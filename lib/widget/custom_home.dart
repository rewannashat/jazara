import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jazara/utilites/const.dart';
import 'package:sizer/sizer.dart';

class custom_home extends StatefulWidget {



  @override
  _custom_homeState createState() => _custom_homeState();


}

class _custom_homeState extends State<custom_home> {
  int sum=1;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 20,right: 20),
      // height: ,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(children: [
            SizedBox(height: 5,),
            InkWell(
              onTap: (){
                  setState(() {
                    sum++;
                    print('$sum');
                  });

              },
              child: Container(
                width: 6.0.w,height: 3.0.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Color(0xff2F6964),
                ),
                child: new Center(
                  child: Icon(CupertinoIcons.add, color: Colors.white,size: 10,),
                  ),
              ),
            ),
            SizedBox(height: 10,),
            Text('$sum' , style: TextStyle(
              color: Colors.black,
              fontSize: 15.0.sp,
            ),),
            SizedBox(height: 10,),
            InkWell(
              onTap: (){
                setState(() {
                  sum--;
                  print('$sum');
                });

              },
              child: Container(
                width: 6.0.w,height: 3.0.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Color(0xff2F6964),
                ),
                child: new Center(
                  child: Icon(Icons.remove, color: Colors.white,size: 8,),
                  ),
              ),
            ),
          ],),
          Row(
            children: [
              Column (children: [
                Text('لوز محمص',style: TextStyle(
                  color: Colors.black,
                  fontSize: 13.0.sp,
                ),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Kg'),
                    SizedBox(width: 10,),
                    Text('1'),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 7),
                  child: Text('\$49.99',style: TextStyle(
                    color: coolrr,
                    fontSize: 12.0.sp,
                  ),),
                )
              ],),
              SizedBox(width: 10,),
              Container(
                width: 20.0.w,height: 10.0.h,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xff707070),
                  ),
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(image: AssetImage('assets/images/uuuu.png')),
                ),
              ),
            ],
          )


        ],
      ),
    );
  }
}