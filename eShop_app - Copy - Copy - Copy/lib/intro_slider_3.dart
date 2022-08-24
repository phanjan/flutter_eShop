import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colorsSys.dart';
import 'login_screen_1.dart';
class IntroSlider3 extends StatelessWidget {
  const IntroSlider3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1440, 2560),
      builder:(context,child) => Scaffold(
        backgroundColor: ColorsSys.backgroundColor,
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.only(right: 75.w,left: 75.w,bottom: 135.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 74.h,),
                SizedBox(height: 344.h,),


                //-- image
                Container(
                  height: 760.9.h,
                  width: 1290.w,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/introimage_c.png'),
                        fit: BoxFit.fill,
                      )
                  ),
                ),
                SizedBox(height: 174.1.h,),
                //Title
                Text('You Got it',
                  style: TextStyle(
                    fontSize: 115.sp,
                    color: ColorsSys.titleTextColor,
                    fontFamily:'OpenSans_Semibold',
                    letterSpacing: 1.02,
                  ),),
                SizedBox(height: 112.h,),
                //subtitle
                Text("Special for you. Free delivered fees for many cities.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize:65.sp,
                      color: ColorsSys.subtitleTextColor,
                      letterSpacing: 1.01,
                      fontFamily: 'OpenSans_Regular'
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
