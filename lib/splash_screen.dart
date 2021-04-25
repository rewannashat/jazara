import 'package:flutter/material.dart';
import 'package:jazara/utilites/const.dart';

import 'authentication_screen/pageview_screen.dart';
class SplashScreen extends StatefulWidget {
  static const id = 'idSplash';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    timer();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //  backgroundColor: Colors.white,
    body: Container(
      decoration: BoxDecoration(
        color: Colors.white,
            image: DecorationImage(image:AssetImage('assets/images/timersec.png') ),
      ),
      width: double.infinity,
    ),
    );
  }

  timer() {
    Future.delayed(
      Duration(seconds: 5),
          () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => PageeView(),
          ),
        );
      },
    );
  }
}
