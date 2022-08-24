import 'package:eshop_app/introduction_screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'intro_slider.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(1440, 2560),
      builder:(context,child)=> Scaffold(
        body: SafeArea(
          child: Container(
            width: 1440.w,
            height: 2560.h,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xffFFBD69),Color(0xffFF6363)],
              ),
            ),
            child: Center(
              child: Container(
                width: 971.85.w,
                height: 780.h,
                child: Image(
                  image: AssetImage('assets/images/splashlogo.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3),
    () {
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return IntroductionScreen();
      }));
    },);
  }
}


