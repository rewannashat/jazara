import 'package:flutter/material.dart';
import 'package:jazara/utilites/const.dart';
import 'package:jazara/utilites/tab_bar.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:jazara/utilites/order_body_list.dart';
import 'home_screen.dart';
class DetailOrder extends StatefulWidget {
  @override
  _DetailOrderState createState() => _DetailOrderState();
}

class _DetailOrderState extends State<DetailOrder> {
  int _tabClick = 0;
  final GlobalKey _tabBarHeight = GlobalKey();
  final GlobalKey _mainContainer = GlobalKey();
  final GlobalKey _columnContainer = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10,),
                    child: Text('الطلبات',style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.0.sp,
                      fontWeight: FontWeight.bold,fontFamily: 'Cairo'
                    ),),
                  ),
                  IconButton(icon: Icon(Icons.arrow_forward_ios_rounded , color: Colors.black,), onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),));
                  })
                ],),
            ),
            Column(
              children: [
                Container(
                  key: _tabBarHeight,
                  child: TabBarDetailsWidget(
                    onChange: (value) {
                      setState(() {
                        _tabClick = value;
                      });
                    },
                  ),
                ),
                if (_tabClick == 2)
                  Container(
                    key: _columnContainer,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10,right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(DateTime.now().year.toString()+'/',style: TextStyle(fontFamily: 'Cairo')),
                                Text(DateTime.now().month.toString()+'/',style: TextStyle(fontFamily: 'Cairo')),
                                Text(DateTime.now().day.toString(),style: TextStyle(fontFamily: 'Cairo')),
                              ],),
                          ),
                          OrderBody('assets/images/Rectaeengle.png'),
                          SizedBox(height: 10,),
                          OrderBody('assets/images/Rectanwwgle.png'),
                          SizedBox(height: 10,),
                          OrderBody('assets/images/Rectaeengle.png'),
                          SizedBox(height: 10,),
                          OrderBody('assets/images/Rectaeengle.png'),
                          SizedBox(height: 10,),
                          OrderBody('assets/images/Rectanwwgle.png'),
                        ],
                      ),
                    ),

                  ),
                 if (_tabClick == 1)
                   Container(
                     key: _columnContainer,
                     child: SingleChildScrollView(
                       child: Column(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(top: 10,right: 20),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.end,
                               children: [
                                 Text(DateTime.now().year.toString()+'/'),
                                 Text(DateTime.now().month.toString()+'/'),
                                 Text(DateTime.now().day.toString()),

                               ],),
                           ),
                           OrderBody('assets/images/Rectaeengle.png'),
                           SizedBox(height: 10,),
                           OrderBody('assets/images/Rectanwwgle.png'),
                           SizedBox(height: 10,),
                           OrderBody('assets/images/Rectaeengle.png'),
                           SizedBox(height: 10,),
                           OrderBody('assets/images/Rectaeengle.png'),
                           SizedBox(height: 10,),
                           OrderBody('assets/images/Rectanwwgle.png'),
                         ],
                       ),
                     ),

                   ),
                if (_tabClick == 0)
                 Container(
                   child: Center(child: Text('لايوجد',style: TextStyle(fontFamily: 'Cairo')),),
                 ),

              ],
            )

          ],),
      ),
    );
  }
}
