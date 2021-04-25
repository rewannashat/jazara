import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:jazara/screen/home_screen.dart';
import 'package:jazara/splash_screen.dart';
import 'package:sizer/sizer_util.dart';

import 'authentication_screen/pageview_screen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //final media = MediaQuery.of(context, nullOk: true) ??
    return LayoutBuilder(                           //return LayoutBuilder
      builder: (context, constraints) {
        return OrientationBuilder(                  //return OrientationBuilder
          builder: (context, orientation) {
            SizerUtil().init(constraints, orientation);  //initialize SizerUtil
            return MaterialApp(
              builder: DevicePreview.appBuilder, // Add the builder here
              debugShowCheckedModeBanner: false,
             initialRoute: SplashScreen.id,
              routes: {
                SplashScreen.id : (context)=>SplashScreen(),
                PageeView.id : (context)=>PageeView(),
               // SignIn.id : (context)=>SignIn(),
                Home.id : (context)=>Home(),
              //  SignScreen.id : (context)=>SignScreen(),

              },
            );
          },
        );
      },
    );
  }
}

