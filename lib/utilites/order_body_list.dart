import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'const.dart';
class OrderBody extends StatefulWidget {
  String image ;
  @override
  _OrderBodyState createState() => _OrderBodyState();

  OrderBody(this.image);
}

class _OrderBodyState extends State<OrderBody> {
  double rat ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          elevation: 5,borderRadius: BorderRadius.circular(8),
          child: Container(
            margin: EdgeInsets.only(left: 10,right: 10,top: 20,bottom: 10),
            width: 90.0.w,height: 16.0.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 33),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.delete , color: Colors.red,),
                      SizedBox(height: 10,),
                      Row(children: [
                        Text('\$7',style: TextStyle(fontFamily: 'Cairo')),

                        Text(':السعر الإجمالي',style: TextStyle(color: circle,fontFamily: 'Cairo'),)
                      ],)

                    ],),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        RatingBar.builder(
                          ignoreGestures: true,
                          itemSize: 14.0.sp,
                          initialRating:0,
                          minRating: 1,
                          onRatingUpdate: (rating) {
                            rat = rating;
                            print(rating);
                          },
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: coolrr,
                          ),
                        ),
                        Text(' مشمش ',style: TextStyle(color: Colors.black,fontSize: 12.0.sp,fontFamily: 'Cairo'),),

                      ],
                    ),
                    Text('قيد الانتظار',style: TextStyle(color: coolrr,fontSize: 16.0.sp,fontFamily: 'Cairo'),),
                    Row(children: [
                      Text(':الكمية',style: TextStyle(color: circle,fontFamily: 'Cairo'),)
                    ],)
                  ],),
                SizedBox(width: 10,),
                Container(
                    width: 20.0.w,height: 15.0.h,
                    color: Color(0xffE1E1E1),
                    child: Image.asset(widget.image)),
              ],),
          ),
        ),
      ],);
  }
}
