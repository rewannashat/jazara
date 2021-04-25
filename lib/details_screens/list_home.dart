import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/cupertino.dart';
import 'package:jazara/utilites/const.dart';
class ListHome extends StatefulWidget {
  String image ;
  String title ;
  @override
  _ListHomeState createState() => _ListHomeState();

  ListHome(this.image, this.title);
}

class _ListHomeState extends State<ListHome> {
  int sum =1 ;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 20,right: 20,top: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      // height: ,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5,right: 5,bottom: 5),
            child: Column(children: [
              SizedBox(height: 5,),
              InkWell(
                onTap: (){
                  setState(() {
                    sum++;
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
              Text(sum.toString().padLeft(2,'0'), style: TextStyle(
                color: Colors.black,
                fontSize: 15.0.sp,
              ),),
              SizedBox(height: 10,),
              InkWell(
                onTap: (){
                  setState(() {
                    if(sum>1)
                    sum--;
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
          ),
          Row(
            children: [
              Column (children: [
                Text(widget.title,style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.0.sp,fontFamily: 'Cairo'
                ),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Kg',style: TextStyle(
                        color: Colors.black,
                        fontSize: 13.0.sp,fontFamily: 'Cairo'
                    ),),
                    SizedBox(width: 5,),
                    Text('1',style: TextStyle(
                        color: Colors.black,
                        fontSize: 13.0.sp,fontFamily: 'Cairo'
                    ),),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 3),
                  child: Text('\$49.99',style: TextStyle(
                      color: coolrr,
                      fontSize: 12.0.sp,fontFamily: 'Cairo'
                  ),),
                )
              ],),
              SizedBox(width: 10,),
              Container(
                width: 28.0.w,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xff707070),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(widget.image),
              ),
            ],
          )


        ],
      ),

    );
  }
}
