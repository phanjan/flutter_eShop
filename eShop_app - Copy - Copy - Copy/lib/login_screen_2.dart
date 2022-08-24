import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colorsSys.dart';
import 'home_screen_light.dart';

class LoginScreen2 extends StatefulWidget {
  const LoginScreen2({Key? key}) : super(key: key);

  @override
  State<LoginScreen2> createState() => _LoginScreen2State();
}

class _LoginScreen2State extends State<LoginScreen2> {

  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1440,2560),
      builder:(context,child) => Scaffold(
        backgroundColor: ColorsSys.backgroundColor,
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.only(left: 75.w, right: 75.w),
            child: SingleChildScrollView(
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


                  SizedBox(height: 377.h,),


                  //
                  Container(
                    width: 1290.w ,
                    height: 1420.h,
                    margin: EdgeInsets.only(bottom: 46.h),
                    padding: EdgeInsets.only(top: 104.h, left: 83.w,right: 82.w),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(36.r)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [


                        Text('Sign in ',
                          style: TextStyle(
                            fontSize: 75.sp,
                            color: ColorsSys.titleTextColor,
                            fontFamily: 'OpenSans_Bold',
                            //height:
                          ),),


                        SizedBox(height: 166.h,),

                        //Textfield user name
                        TextField(
                          controller: _username,
                          decoration: InputDecoration(
                            fillColor: ColorsSys.backgroundColor,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(36.r),
                              borderSide: BorderSide(
                                color: Colors.transparent,width: 0
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(36.r),
                              borderSide: BorderSide(
                                  color: Colors.transparent,width: 0
                              ),
                            ),
                            filled: true,
                            //fillColor: FieldColor
                            labelText: "User name",
                            labelStyle: TextStyle(
                              color: ColorsSys.subtitleTextColor,
                              fontSize: 55.sp,
                              fontFamily: 'OpenSans_Regular',
                            ),
                              prefixIcon: ImageIcon(
                                AssetImage('assets/icons/icon_feather_user.png'),
                                color: ColorsSys.titleTextColor,
                              ),
                              prefixIconConstraints: BoxConstraints(
                                minWidth: (66+74+75).w,
                              ),
                            contentPadding: EdgeInsets.symmetric(horizontal: 80.w,vertical: 52.h)
                          ),
                        ),


                        SizedBox(height: 75.h,),


                        //Textfield password
                        TextField(
                          controller: _password,
                          obscureText: true,
                          decoration: InputDecoration(
                              fillColor: ColorsSys.backgroundColor,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(36.r),
                                borderSide: BorderSide(
                                    color: Colors.transparent,width: 0
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(36.r),
                                borderSide: BorderSide(
                                    color: Colors.transparent,width: 0
                                ),
                              ),
                              filled: true,

                              //fillColor: FieldColor
                              labelText: "Password",
                              labelStyle: TextStyle(
                                color: ColorsSys.subtitleTextColor,
                                fontSize: 55.sp,
                                fontFamily: 'OpenSans_Regular',
                              ),
                              prefixIcon: ImageIcon(
                                AssetImage('assets/icons/Group 328.png'),
                                color: ColorsSys.titleTextColor,
                              ),
                              prefixIconConstraints: BoxConstraints(
                                minWidth: (66+74+75).w,
                              ),
                              contentPadding: EdgeInsets.symmetric(horizontal: 80.w,vertical: 52.h)
                          ),
                        ),


                        SizedBox(height: 47.h,),


                        //Text Forgot Password?
                        Container(
                          margin: EdgeInsets.only(left: 700.w),
                          width: 428.w,
                          height: 71.h,
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                              fontSize: 51.sp,
                              fontFamily: 'OpenSans_Regular',
                              color: ColorsSys.subtitleTextColor,
                            ),
                          ),
                        ),


                        SizedBox(height: 74.h,),


                        //btn sign in
                        Container(
                          height: 175.h,
                          width: 1125.w,
                          child: RaisedButton(
                            onPressed: (){
                              setState(() {
                                if(_username=='admin'||_password=="admin"){
                                  Navigator.push(context, MaterialPageRoute(builder: (context){
                                    return HomeScreenLight();
                                  }));
                                }
                              });
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
                                constraints: BoxConstraints(maxWidth: 1125.w ,minHeight:175.h ),
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
                        SizedBox(height: 74.h,),

                        //RickText
                        Container(
                          width: 726.w,
                          height: 114.h,
                          child:Center(
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text: 'By continuing, you agree to our',
                                style: TextStyle(
                                  fontSize: 41.sp,
                                  fontFamily: 'OpenSans_Light',
                                  color: ColorsSys.subtitleTextColor,
                                ),
                                children: [
                                  TextSpan(
                                    text: '\nTerm of service',
                                    style: (TextStyle(
                                      decoration: TextDecoration.underline
                                    )),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = (){}
                                  ),
                                  TextSpan(
                                      text: ' and ',
                                  ),
                                  TextSpan(
                                      text: 'Privacy Policy',
                                      style: (TextStyle(
                                          decoration: TextDecoration.underline,
                                      )),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = (){}
                                  ),
                                ]
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  
                  SizedBox(height:  1100.h,),


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
