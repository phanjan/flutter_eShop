import 'package:eshop_app/intro_slider.dart';
import 'package:eshop_app/login_screen_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'colorsSys.dart';
import 'intro_slider_2.dart';
import 'intro_slider_3.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {

  //controller to keep track of which page we're on
  PageController _controller = PageController();

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1440, 2560),
      builder:(context,child) => Scaffold(
        body: Stack(
          children: [
            PageView(
              controller: _controller,
              onPageChanged:(index) {
                setState(() {
                  onLastPage = (index == 2);
                });
              },
              children: [
                IntroSlider(),
                IntroSlider2(),
                IntroSlider3(),
              ],
            ),

            Container(
              margin: EdgeInsets.only(left: 625.w,right: 625.w,top: 2037.h),
              height: 30.h,
              width: 190.w,
              child: SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: WormEffect(
                  spacing: 50.w,
                  radius: 40.r,
                  dotWidth: 30.w,
                  dotHeight: 30.h,
                  dotColor: Color(0xff7673FF),
                  activeDotColor: Color(0xff4543C1),
                ),
              ),
            ),

            //Btn Next => Get Started
            onLastPage ?
            Container(
              margin: EdgeInsets.only(left:76.w,right: 75.w,top: 2203.h),
              height: 175.h,
              width: 1289.w,
              child: RaisedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return LoginScreen1();
                  }));
                },
                padding: EdgeInsets.all(0.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(36.r),
                ),
                child: Ink(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Color(0xffFFBD69),Color(0xffFF6363)],
                      ),
                      borderRadius: BorderRadius.circular(36.r)
                  ),
                  child: Container(
                    constraints: BoxConstraints(maxWidth: 1289.w ,minHeight:175.h ),
                    child: Center(
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans_Regular',
                          fontSize: 65.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
            :
            Container(
              margin: EdgeInsets.only(left:76.w,right: 75.w,top: 2203.h),
              height: 175.h,
              width: 1289.w,
              child: RaisedButton(
                onPressed: (){
                  _controller.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                },
                padding: EdgeInsets.all(0.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(36.r),
                ),
                child: Ink(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Color(0xffFFBD69),Color(0xffFF6363)],
                      ),
                      borderRadius: BorderRadius.circular(36.r)
                  ),
                  child: Container(
                    constraints: BoxConstraints(maxWidth: 1289.w ,minHeight:175.h ),
                    child: Center(
                      child: Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans_Regular',
                          fontSize: 65.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Skip
            onLastPage ?
            InkWell(
                    onTap: (){
                      _controller.jumpToPage(2);
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 1187.w,top: 136.h),
                      height: 74.h,
                      width: 178.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                        ],
                      ),
                    ),
                  )
                :
            InkWell(
              onTap: (){
                _controller.jumpToPage(2);
              },
              child: Container(
                margin: EdgeInsets.only(left: 1187.w,top: 136.h),
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
            ),

          ],
        ),
      ),
    );
  }
}
