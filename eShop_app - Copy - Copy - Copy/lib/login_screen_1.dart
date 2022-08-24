import 'package:eshop_app/colorsSys.dart';
import 'package:eshop_app/home_screen_light.dart';
import 'package:eshop_app/login_screen_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'login_screen_3.dart';
class LoginScreen1 extends StatelessWidget {
  const LoginScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      ScreenUtilInit(
      designSize: const Size(1440,2560),
      builder:(context,child) => Scaffold(
        backgroundColor: ColorsSys.backgroundColor,
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.only(left: 76.w, right: 75.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 179.h,),
                //logo
                Center(
                  child:Image(image: AssetImage('assets/images/homelogo.png',),
                    height: 401.99.h,
                    width: 500.87.w,),
                ),
                SizedBox(height: 73.h,),
                Text('Welcome to eShop',
                style: TextStyle(
                  fontSize: 75.sp,
                  color: ColorsSys.titleTextColor,
                  fontFamily: 'OpenSans_Bold',
                  //height:
                ),),
                SizedBox(height: 4.h,),
                Text('The eCommerce app for all business',
                style: TextStyle(
                  fontSize: 60.sp,
                  color: ColorsSys.titleTextColor,
                  fontFamily: 'OpenSans_Light',
                  //height:
                ),),
                SizedBox(height: 397.h,),
                Text('Sign in to your account',
                style: TextStyle(
                  fontSize: 75.sp,
                  color: ColorsSys.titleTextColor,
                  fontFamily: 'OpenSans_Bold',
                  //height:
                ),),


                SizedBox(height: 195.h,),


                //button Sign in
                Container(
                  height: 175.h,
                  width: 1289.w,
                  child: RaisedButton(
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context){
                        return LoginScreen2();
                      }) );
                    },
                    padding: EdgeInsets.all(0.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.r),
                    ),
                    child: Ink(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [Color(0xffFFBD69),Color(0xffFF6363)],
                          ),
                          borderRadius: BorderRadius.circular(40.r)
                      ),
                      child: Container(
                        constraints: BoxConstraints(maxWidth: 1289.w ,minHeight:175.h ),
                        child: Center(
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'OpenSans_Regular',
                              fontSize: 64.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),


                SizedBox(height: 100.h,),


                //btn Create an account
                Container(
                  height: 175.h,
                  width: 1289.w,
                  child: RaisedButton(
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context){
                        return LoginScreen3();
                      }) );
                    },
                    padding: EdgeInsets.all(0.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.r),
                    ),
                    child: Ink(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [Color(0xffFFBD69),Color(0xffFF6363)],
                          ),
                          borderRadius: BorderRadius.circular(40.r)
                      ),
                      child: Container(
                        constraints: BoxConstraints(maxWidth: 1289.w ,minHeight:175.h ),
                        child: Center(
                          child: Text(
                            'Create an account',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'OpenSans_Regular',
                              fontSize: 64.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),


                SizedBox(height: 100.h,),


                //btn Skip sign in
                Container(
                  height: 175.h,
                  width: 1289.w,
                  child: RaisedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return HomeScreenLight();
                      }));
                    },
                    padding: EdgeInsets.all(0.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.r),
                    ),
                    child: Ink(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [Color(0xffFFBD69),Color(0xffFF6363)],
                          ),
                          borderRadius: BorderRadius.circular(40.r)
                      ),
                      child: Container(
                        constraints: BoxConstraints(maxWidth: 1289.w ,minHeight:175.h ),
                        child: Center(
                          child: Text(
                            'Skip sign in',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'OpenSans_Regular',
                              fontSize: 64.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
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
