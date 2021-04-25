import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jazara/details_screens/detail_type_screen.dart';
import 'package:jazara/details_screens/offers_details.dart';
import 'package:jazara/provider/counter.dart';
import 'package:jazara/screen/type_screen.dart';
import 'package:jazara/utilites/const.dart';
import 'package:jazara/widget/custom_home.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:jazara/screen/drawer.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';

import 'cart_screen.dart';
import 'home.dart';
import 'offers_screen.dart';
import 'order_details.dart';
class Home extends StatefulWidget {
  static const id = 'idHome';
  @override
  _HomeState createState() => _HomeState();
}
int sum =1 ;
int index=0  ;
class _HomeState extends State<Home> {
  int currentindex= 4 ;
  List<Widget> _children = [
  DetailOrder(),Cart(), OfeersDetails(),Type() ,homee()
  ];
  Widget child ;
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> drawerKey = GlobalKey();
    return SafeArea(
        child: Scaffold(
          key: drawerKey,
          body: _children[currentindex],
          drawer: drawerr(),
          bottomNavigationBar: FFNavigationBar(
            theme: FFNavigationBarTheme(
              barBackgroundColor: Colors.white,
              selectedItemBorderColor: Colors.transparent,
              selectedItemBackgroundColor: Colors.green,
              selectedItemIconColor: Colors.white,
              selectedItemLabelColor: Colors.black,
              showSelectedItemShadow: false,
              barHeight: 70,
            ),
            selectedIndex: currentindex,
            onSelectTab: (index) {
              setState(() {
                currentindex = index;});
            },
            items: [
              FFNavigationBarItem(
                iconData: Icons.map,
                label: 'المزيد',
                selectedBackgroundColor: coolrr,
              ),
              FFNavigationBarItem(
                iconData: Icons.shopping_cart_sharp,
                label: 'السلة',
                selectedBackgroundColor: coolrr,
              ),
              FFNavigationBarItem(
                iconData: Icons.attach_money,
                label: 'العروض',
                selectedBackgroundColor: coolrr,
              ),
              FFNavigationBarItem(
                iconData: Icons.hourglass_empty,
                label: 'التصنيفات',
                selectedBackgroundColor: coolrr,
              ),
              FFNavigationBarItem(
                iconData: Icons.home,
                label: 'الرئيسية',
                selectedBackgroundColor: coolrr,
              ),
            ],
          ),

    ));
  }
  //  botom (indexx){
  //   setState(() {
  //     currentindex = indexx;
  //   });
  //    switch(indexx) {
  //      case 0 : child = DetailOrder();
  //      break;
  //
  //      case 1 : child=Cart();
  //      break;
  //
  //      case 2:  child=OfeersDetails();
  //      break;
  //
  //      case 3:
  //       child= Typee(context);
  //        break;
  //
  //      case 4:
  //       child= homee();
  //        break;
  //    }
  //
  // }
}

/*     bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: currentindex,
            onTap: botom,
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/Icon feather-map.png')),
                title: new Text('المزيد'),
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/Icon awesome-shopping-cart.png')),
                title: new Text('السلة'),
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/sort-amount-down-alt-solid.png')),
                  title: Text('العروض')
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/Icon awesome-stream.png')),
                  title: Text('التصنيفات')
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/Home.png')),
                  title: Text('الرئيسية'),

              )
            ],
          ),*/