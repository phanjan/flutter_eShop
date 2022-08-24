import 'package:eshop_app/colorsSys.dart';
import 'package:eshop_app/intro_slider_3.dart';
import 'package:eshop_app/login_screen_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'intro_slider_2.dart';

class IntroSlider extends StatelessWidget {
  const IntroSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      ScreenUtilInit(
        designSize: Size(1440, 2560),
        builder:(context,child) => Scaffold(
          backgroundColor: ColorsSys.backgroundColor,
          body: SafeArea(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              margin: EdgeInsets.only(right: 75.w,left: 76.w),
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
                          SizedBox(width: 32.7.w,),
                          Image(image: AssetImage('assets/images/Icon ionic-ios-arrow-back.png',
                          ),
                            width: 28.33.w,
                            height: 45.88.h,
                            fit: BoxFit.fill,
                          ),
                        ],
                      ),
                    ),
                  ),*/

                  SizedBox(height: 17.h,),
                  //-- image
                  Container(
                    height: 1087.46.h,
                    width: 1049.w,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/introimage_a.png'),
                          fit: BoxFit.fill,
                        )
                    ),
                  ),
                  SizedBox(height: 176.5.h,),
                  //Title
                  Text('Search Items',
                    style: TextStyle(
                      fontSize: 115.sp,
                      color: ColorsSys.titleTextColor,
                      fontFamily:'OpenSans_Semibold',
                      letterSpacing: 1.05,
                    ),),
                  SizedBox(height: 110.h,),
                  //subtitle
                  Text('Search milions of items you want very\neasily',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize:64.5.sp,
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
