import 'package:flutter/material.dart';
import 'package:jazara/authentication_screen/sign_in_screen.dart';
import 'package:sizer/sizer.dart';
import 'package:jazara/utilites/const.dart';

import 'new_login_screen.dart';
class PageeView extends StatefulWidget {
  static const id = 'idHome';

  @override
  _PageeViewState createState() => _PageeViewState();
}
int index = 0 ;
int ind = 0;
class _PageeViewState extends State<PageeView> {

  // timer (){
  //   Future.delayed(
  //     Duration(seconds: 1),
  //         () {
  //       Navigator.push(context, MaterialPageRoute(builder: (context) =>   SignIn() ,));
  //     },
  //   );
  //
  // }
 @override
  void initState() {
  // timer ();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Kcolors,
        body: Stack(
          children: [
            PageView(
            onPageChanged: (value) {
              setState(() {
                index = value;
                print(index);
              });
            },
              children:[
               Page(),
                Page(),
                Page(),
               // index==2?timer():Container(),
              ],

          ),
            Positioned(
              bottom: 45,
              left: 140,
              child: Row(
                children: [
                  Container(
                    child: Center(child: Circle(index)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>   SignIn() ,));

                      },
                      child: Text('Next',style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0.sp,fontFamily: 'Cairo'
                      ),),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

      ),
    );
  }
}


Widget Page (){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(height: 4.0.h,),
      Stack(
        children: [
          SizedBox(height: 30,),
          Image.asset('assets/images/Path 86.png'),
          Container(
              padding: EdgeInsets.only(top: 60,left: 20,right: 25),
              child: Center(child: Image.asset('assets/images/1_Grocery Shopping.png',width: 80.0.w,))),
        ],
      ),
      Expanded(
        child: Container(
          decoration: BoxDecoration(
              color: Color(0xffD05E27),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30))),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/Group 74.png'),
                    Image.asset('assets/images/Group 73.png'),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text('لا داعي لتضييع وقتك بالمتاجر',style: TextStyle(
                  fontSize: 18.0.sp,
                  color: Colors.white,
                  fontFamily: 'Cairo'
                ),),
              ),
              Text('\t تابع \tتابع تابع\t لذلك تابع',style: TextStyle(
                color: Colors.white,
                fontSize: 13.0.sp,
                  fontFamily: 'Cairo'
              ),),



            ],
          ),
        ),
      ),
    ],
  );
}
class Circle extends StatelessWidget {
  int i ;
  Circle(this.i);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildContainer(i==0?50:15),
        buildContainer(i==1?50:15),
        buildContainer(i==2?50:15),
      ],
    );
  }

  Container buildContainer( double width) {
    return Container(
      margin: EdgeInsets.all(5),
      width: width,
      height: 15,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        //shape: BoxShape.circle,
        color:Colors.white,
      ),
    );
  }


}