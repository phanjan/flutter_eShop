import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colorsSys.dart';
import 'intro_slider_3.dart';
class IntroSlider2 extends StatelessWidget {
  const IntroSlider2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {//
    return
      ScreenUtilInit(
        designSize: const Size(1440, 2560),
        builder:(context,child) => Scaffold(
          backgroundColor: ColorsSys.backgroundColor,
          body: SafeArea(
            child: Container(
              margin: EdgeInsets.only(right: 75.w,left: 75.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 74.h,),
                  // skip and icon next
                  /*InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return IntroSlider3();
                      }));
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 1112.w),
                      height: 74.h,
                      width: 178.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Skip',
                            style: TextStyle(fontSize: 54.sp,
                                color: ColorsSys.subtitleTextColor,
                                fontFamily: 'OpenSans_SemiBold'
                            ),),
                          SizedBox(width: 33.w,),
                          Image(image: AssetImage('assets/images/Icon ionic-ios-arrow-back.png',
                          ),
                            width: 28.w,
                            height: 46.h,
                            fit: BoxFit.fill,
                          ),
                        ],
                      ),
                    ),
                  ),*/
                  SizedBox(height: 214.h,),
                  //-- image
                  Container(
                    height: 890.21.h,
                    width: 1290.w,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/introimage_b.png'),
                          fit: BoxFit.fill,
                        )
                    ),
                  ),
                  SizedBox(height: 174.8.h,),
                  //Title
                  Text('Order it',
                    style: TextStyle(
                      fontSize: 115.sp,
                      color: ColorsSys.titleTextColor,
                      fontFamily:'OpenSans_Semibold',
                      letterSpacing: 1.02,
                    ),),
                  SizedBox(height: 68.h,),
                  //subtitle
                  Text("We're the eShop and here to\nmake your life easier. Just relax and\nlet's get started",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize:65.sp,
                        color: ColorsSys.subtitleTextColor,
                        letterSpacing: 1.01,
                        fontFamily: 'OpenSans_Regular'
                    ),
                  ),
                  //SizedBox(height: 20,),
                  //button

                ],
              ),
            ),
          ),
        ),
      );
  }
}
