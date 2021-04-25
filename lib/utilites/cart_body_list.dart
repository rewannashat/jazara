import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'const.dart';
class CartBody extends StatefulWidget {
  String image ;
  @override
  _CartBodyState createState() => _CartBodyState();

  CartBody(this.image);
}

class _CartBodyState extends State<CartBody> {
  int sum = 1 ;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: 90.0.w,height: 16.0.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 105,top: 5),
                    child: Text('مشمش',style: TextStyle(fontSize: 16.0.sp,fontFamily: 'Cairo',fontWeight: FontWeight.bold),),
                  ),
                  Row(
                    children: [
                      Text('\$15.00',style: TextStyle(color: coolrr,fontFamily: 'Cairo'),),
                      SizedBox(width: 120,),
                      Text('فواكه',style: TextStyle(fontFamily: 'Cairo'),),
                    ],),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 85,),
                child: Container(
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
              ),
            ],),
            Container(
              width: 25.0.w,height: 16.0.h,
              decoration: BoxDecoration(
                color: Color(0xffE1E1E1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(widget.image),
            ),

          ],),
      ),
    );
  }
}
