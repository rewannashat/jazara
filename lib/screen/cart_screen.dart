import 'package:flutter/material.dart';
import 'package:jazara/utilites/const.dart';
import 'package:sizer/sizer.dart';
import 'package:jazara/utilites/cart_body_list.dart';
import 'home_screen.dart';
import 'order_screen.dart';
class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    int sum =1;
    return Container(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10,),
                child: Text('سلة المشتريات',style: TextStyle(
                  color: Colors.black,
                  fontSize: 17.0.sp,
                  fontWeight: FontWeight.bold,fontFamily: 'Cairo'
                ),),
              ),
              IconButton(icon: Icon(Icons.arrow_forward_ios_rounded , color: Colors.black,), onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => Home(),));
              })
            ],),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Icon(Icons.delete , color: Colors.red,),
            Row(children: [
              Text('تحديد الكل',style: TextStyle(color: circle , fontSize: 15.0.sp,fontFamily: 'Cairo'),),
              Image.asset('assets/images/Path.png',color: circle,),
            ],),
              Text('عدد العناصر (4)',style: TextStyle(color: circle , fontSize: 15.0.sp,fontFamily: 'Cairo'),)
          ],),
        ),
        Divider(color: circle,),
        CartBody('assets/images/Rectangle.png'),
        SizedBox(height: 10,),
        CartBody('assets/images/Rectangele.png'),
        SizedBox(height: 10,),
        CartBody('assets/images/Rectangle.png'),
        SizedBox(height: 10,),
        Divider(color: circle,),
        Padding(
          padding: const EdgeInsets.only(left: 10,right: 10,top: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: 'المجموع:',style: TextStyle(color: coolrr,fontFamily: 'Cairo')),
                    TextSpan(text: '\$21',style: TextStyle(color: Colors.black,fontFamily: 'Cairo')),
                  ]
                ),
            ),
            Row(children: [
              Text('متابعة التسوق',style: TextStyle(color: coolrr,fontFamily: 'Cairo')),
              SizedBox(width: 5,),
              Icon(Icons.arrow_forward , color:coolrr ,)
            ],)

          ],),
        ),
        Container(
          height: 6.0.h,
          width: 65.0.w,
          margin: EdgeInsets.only(top: 10,),
          child: RaisedButton(
            onPressed: () async {
              _onbuttonpressed();
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color:Color(0xffD05E27),
            child: Center(
              child: Text('تأكيد الطلبية',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0.sp,fontFamily: 'Cairo'
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 5,),
        Text('تتبع الطلبية السابقة ',style: TextStyle(
          color: coolrr,fontSize: 14.0.sp,fontFamily: 'Cairo'
        ),),



      ],),
    );
  }
  void _onbuttonpressed() {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(20),
              topRight: const Radius.circular(20),)),
        context: context,
        builder: (context) {
          return Container(
            color: Colors.transparent,
            height: 490,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
               Container(
                 margin: EdgeInsets.only(top: 5,left: 40,right: 40),
                 width: 68.0.w,height: 7.0.h,
                 decoration: BoxDecoration(
                   border: Border.all(
                     color: Color(0xff686868),
                   ),
                   borderRadius: BorderRadius.circular(10),
                 ),
                 child: Row(
                   children: [
                     Container(
                       decoration: BoxDecoration(
                         color: circle,
                         borderRadius: BorderRadius.only(
                           bottomLeft: Radius.circular(10),
                           topLeft: Radius.circular(10),
                         ),
                       ),
                       width: 35.0.w,height: 7.0.h,
                       child: Row(children: [
                         Icon(Icons.arrow_back,color: Colors.white,),
                         SizedBox(width: 5,),
                         Text('تطبيق الخصم',style: TextStyle(color: Colors.white,fontFamily: 'Cairo'),),
                       ],),
                     ),
                     Container(
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                       ),
                       width: 30.0.w,height: 7.0.h,
                       child: Center(child: Text('كوبون الخصم',style: TextStyle(color: Colors.black,fontFamily: 'Cairo'),)),
                     )
                   ],),

               ),
                  Text('تفاصيل الدفع',style: TextStyle(color:circle,fontSize: 17.0.sp ,fontFamily: 'Cairo'),),
                  Material(elevation: 5,
                    child: Container(
                      width: 90.0.w,height: 38.0.h,
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30,right: 20,top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            Text('\$140.00',style: TextStyle(fontFamily: 'Cairo')),
                            Text('مجموع المشتريات -',style: TextStyle(fontFamily: 'Cairo'),),
                          ],),
                        ),
                        Divider(color: Colors.grey,),
                        Row(
                          children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                Text('\$12.00',style: TextStyle(fontFamily: 'Cairo')),
                                Text(':أجور التوصيل',style: TextStyle(fontFamily: 'Cairo')),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(60),
                                    color: circle,
                                  ),
                                  width: 2.0.w,height: 1.0.h,
                                ),
                              ],),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                Text('\$-2.00',style: TextStyle(fontFamily: 'Cairo')),
                                Text(':خصم رمز ترويجي',style: TextStyle(fontFamily: 'Cairo')),
                                Container(
                                  margin: EdgeInsets.only(left:10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(60),
                                    color: circle,
                                  ),
                                  width: 2.0.w,height: 1.0.h,
                                ),
                              ],),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                Text('\$-2.00',style: TextStyle(fontFamily: 'Cairo')),
                                Text(':خصم العروض',style: TextStyle(fontFamily: 'Cairo')),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(60),
                                    color: circle,
                                  ),
                                  width: 2.0.w,height: 1.0.h,
                                ),
                              ],),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                Text('\$-2.00',style: TextStyle(fontFamily: 'Cairo')),
                                Text(':المجموع بعد الخصم',style: TextStyle(fontFamily: 'Cairo')),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(60),
                                    color: circle,
                                  ),
                                  width: 2.0.w,height: 1.0.h,
                                ),
                              ],),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                Text('\$-2.00',style: TextStyle(fontFamily: 'Cairo')),
                                Text(':الضريبة المضافة',style: TextStyle(fontFamily: 'Cairo')),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(60),
                                    color: circle,
                                  ),
                                  width: 2.0.w,height: 1.0.h,
                                ),
                              ],),
                            ),
                          ],),
                          Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: Text('تكاليف أخرى -',style: TextStyle(color: Colors.black,fontFamily: 'Cairo'),),
                          ),
                        ],),
                        Divider(color: Colors.grey,),
                        Padding(
                          padding: const EdgeInsets.only(left: 30,right: 20,),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('\$150.00',style: TextStyle(fontFamily: 'Cairo'),),
                              Text('المجموع الكلي -',style: TextStyle(fontFamily: 'Cairo')),
                            ],),
                        ),
                        Container(
                          height: 6.0.h,
                          width: 60.0.w,
                          margin: EdgeInsets.only(top: 7,),
                          child: RaisedButton(
                            onPressed: () async {
                              onbuttonpressed();
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            color:Color(0xffD05E27),
                            child: Center(
                              child: Text('التالي',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0.sp,fontFamily: 'Cairo'
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],),
                    ),
                  )

              ],),

            ),
          );
        });
  }
  void onbuttonpressed() {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(20),
              topRight: const Radius.circular(20),)),
        context: context,
        builder: (context) {
          return Container(
            color: Colors.transparent,
            height: 560,
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text('اختر طريقة للدفع',style: TextStyle(fontSize: 17.0.sp,fontFamily: 'Cairo' ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 6,right: 10,bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      Container(
                        width: 35.0.w,height: 10.0.h,
                        decoration: BoxDecoration(
                          border: Border.all(color: circle),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Image.asset('assets/images/cash.png'),
                          Text('دفع كاش',style: TextStyle(fontFamily: 'Cairo'))
                        ],),
                      ),
                      Container(
                        width: 35.0.w,height: 10.0.h,
                        decoration: BoxDecoration(
                          border: Border.all(color: circle),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/wallet.png'),
                            Text('خصم من المحفظة',style: TextStyle(fontFamily: 'Cairo'))
                          ],),
                      )
                    ],),
                  ),
                  Center(child: Text('أو ',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Cairo'),),),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 170),
                     child: Text('رقم البطاقة',style: TextStyle(fontFamily: 'Cairo')),
                   ),
                   Container(
                     height: 6.0.h,
                     margin: EdgeInsets.only(top: 4 , right: 45, left: 45),
                     child: TextFormField(
                       decoration: InputDecoration(
                         filled: true,
                         fillColor: Colors.white,
                         border: InputBorder.none,
                         enabledBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(50),
                           borderSide: new BorderSide(color:Color(0xff686868)),
                         ),
                         focusedBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(30),
                           borderSide: new BorderSide(color:Color(0xff686868)),
                         ),),
                     ),
                   ),
                 ],),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Column(
                      children: [
                        Text('CVV',style: TextStyle(fontFamily: 'Cairo')),
                        Container(
                          width: 30.0.w,height: 6.0.h,
                          margin: EdgeInsets.only(top:4 , right: 20 , left: 20),
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: InputBorder.none,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: new BorderSide(color:Color(0xff686868)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: new BorderSide(color:Color(0xff686868)),
                              ),),
                          ),
                        ),

                      ],),
                    Column(
                      children: [
                        Text('تاريخ الانتهاء',style: TextStyle(fontFamily: 'Cairo')),
                        Container(
                          width: 30.0.w,height: 6.0.h,
                          margin: EdgeInsets.only(top: 8 , right: 20 , left: 20),
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: InputBorder.none,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: new BorderSide(color:Color(0xff686868)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: new BorderSide(color:Color(0xff686868)),
                              ),),
                          ),
                        ),

                      ],),


                  ],),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 140),
                        child: Text('الاسم على البطاقة',style: TextStyle(fontFamily: 'Cairo')),
                      ),
                      Container(
                        height: 6.0.h,
                        margin: EdgeInsets.only(top: 2 , right: 45 , left: 45),
                        child: TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: InputBorder.none,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: new BorderSide(color:Color(0xff686868)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: new BorderSide(color:Color(0xff686868)),
                            ),),
                        ),
                      ),
                    ],),
                  Container(
                    height: 5.0.h,
                    width: 60.0.w,
                    margin: EdgeInsets.only(top: 3,),
                    child: RaisedButton(
                      onPressed: () async {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Order(),));
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color:Color(0xffD05E27),
                      child: Center(
                        child: Text('إنهاء',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0.sp,fontFamily: 'Cairo'
                          ),
                        ),
                      ),
                    ),
                  ),



                ],),

            ),
          );
        });
  }

}
