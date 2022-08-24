import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'colorsSys.dart';
import 'login_screen_5.dart';

class LoginScreen4 extends StatelessWidget {
  String phone;
  LoginScreen4({Key? key,
  required this.phone,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
 ScreenUtilInit(
        designSize: const Size(1440, 2560),
        builder: (context,child)=>
            Scaffold(
              backgroundColor: ColorsSys.backgroundColor,
              body: SafeArea(
                child:  Container(
                  padding: EdgeInsets.only(left:75.w,right: 75.w,bottom: 58.h ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 179.h,),

                        // logo
                        Container(
                          width: 500.87.w ,
                          height: 401.99.h,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/homelogo.png')
                              )
                          ),
                        ),


                        SizedBox(height: 365.h,),

                        ///
                        Container(
                          width: 1290.w ,
                          height: 1420.h ,
                          padding: EdgeInsets.only(left: 83.w,right: 82.w),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(63.r)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 116.h,),
                              Text('Enter Verification Code',
                                style: TextStyle(
                                  fontSize: 75.sp,
                                  color: ColorsSys.titleTextColor,
                                  fontFamily: 'OpenSans_Bold',
                                  //height:
                                ),),
                              SizedBox(height: 164.h,),

                              //RickText
                              Container(
                                width: 900.w,
                                height: 181.h,
                                child: Center(
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                        text: 'We have sent a verification code to',
                                        style: TextStyle(
                                          fontSize: 55.sp,
                                          fontFamily: 'OpenSans_Regular',
                                          color: ColorsSys.subtitleTextColor,
                                        ),
                                        children: [
                                          TextSpan(
                                              text: '\n$phone',
                                              style: (TextStyle(
                                                  fontSize: 75.sp
                                              )),
                                          ),

                                        ]
                                    ),
                                  ),
                                ),
                              ),


                              SizedBox(height: 45.h,),

                              //Code pin

                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white
                                ),
                                child: VerificationCode(
                                  onCompleted: (value){},
                                  onEditing: (value){},
                                  length: 4,
                                  textStyle: TextStyle(
                                      fontFamily: 'OpenSans_Regular',
                                      color: ColorsSys.titleTextColor,
                                      fontSize: 75.sp
                                  ),
                                  underlineColor: ColorsSys.backgroundColor,
                                ),
                              ),

                              // Container(
                              //   width: 999.w ,
                              //   height: 139.5.h,
                              //   decoration: BoxDecoration(
                              //       color: ColorsSys.backgroundColor
                              //   ),
                              //   child: ,
                              // ),


                              SizedBox(height: 191.h,),

                              //btn send Verify and proceed
                              Container(
                                height: 175.h,
                                width: 1125.w,
                                child: RaisedButton(
                                  onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context){
                                      return LoginScreen5();
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
                                        borderRadius: BorderRadius.circular(40.r)
                                    ),
                                    child: Container(
                                      constraints: BoxConstraints(maxWidth: 1125.w ,minHeight:175.h ),
                                      child: Center(
                                        child: Text(
                                          'Verify and proceed',
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

                              SizedBox(height: 93.h,),

                              //RickText
                              Container(
                                width: 622.w,
                                height: 75.25.h,
                                child:Center(
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                        text: "Didn't get the code? ",
                                        style: TextStyle(
                                          fontSize: 42.sp,
                                          fontFamily: 'OpenSans_Light',
                                          color: ColorsSys.subtitleTextColor,
                                        ),
                                        children: [
                                          TextSpan(
                                              text: 'Resend OTP',
                                              style: (TextStyle(
                                                  decoration: TextDecoration.underline
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

                        SizedBox(height: 1000.h,),

                      ],
                    ),
                  ),
                  
                ),
                
              ),
            )
    );
  }
}

