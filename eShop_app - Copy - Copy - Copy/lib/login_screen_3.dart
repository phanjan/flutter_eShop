import 'package:eshop_app/colorsSys.dart';
import 'package:eshop_app/login_screen_4.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:country_picker/country_picker.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'country_picker.dart';

class LoginScreen3 extends StatefulWidget {


  @override
  State<LoginScreen3> createState() => _LoginScreen3State();
}

class _LoginScreen3State extends State<LoginScreen3> {

  TextEditingController _phone = TextEditingController();

  //String title = 'Country Code Picker';
  void _callBackFunction(String name, String dialCode, String flag) {
    // place your code
  }



  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1440, 2560),
        builder: (context,child)=>
    Scaffold(
      backgroundColor: ColorsSys.backgroundColor,
      body: SafeArea(
        child:  Container(
          padding: EdgeInsets.only(left:75.w,right: 75.w ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: 179.h,),


                // logo
                Center(
                  child:Image(image: AssetImage('assets/images/homelogo.png',),
                    height: 401.99.h,
                    width: 500.87.w,),
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


                      Text('Create an account',
                        style: TextStyle(
                          fontSize: 75.sp,
                          color: ColorsSys.titleTextColor,
                          fontFamily: 'OpenSans_Bold',
                          //height:
                        ),),


                      SizedBox(height: 167.h,),

                      Text(
                        'We will an Verification Code to\nThis number',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 55.sp,
                          fontFamily: 'OpenSans_Regular',
                          color: ColorsSys.subtitleTextColor,
                        ),
                      ),


                      SizedBox(height: 75.h,),


                      //Country code Picker

                      Container(
                        padding: EdgeInsets.only(left: 44.w),
                        height: 175.h,
                        width: 1125.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(36.r),
                          color: ColorsSys.backgroundColor
                        ),
                        child: Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [

                            CountryPicker(
                              callBackFunction: _callBackFunction,
                              headerText: 'Select Country',
                              headerBackgroundColor: Theme.of(context).primaryColor,
                              headerTextColor: Colors.white,
                            ),

                             Expanded(
                              child:  TextField(
                                controller: _phone,
                                decoration: InputDecoration(
                                  hintText: 'Phone number',
                                  hintStyle: TextStyle(
                                    color: ColorsSys.subtitleTextColor,
                                    fontFamily: 'OpenSans_Regular',
                                    fontSize: 55.sp,

                                  ),
                                  border: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  contentPadding:  EdgeInsets.symmetric(vertical: 13,horizontal: 13),
                                ),
                                keyboardType: TextInputType.number,
                              ),
                            ),
                          ],
                        ),
                      ),


                      SizedBox(height: 166.h,),

                      //btn send OTP
                      Container(
                        height: 175.h,
                        width: 1125.w,
                        child: RaisedButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return LoginScreen4(
                                phone : _phone.text
                              );
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
                              constraints: BoxConstraints(maxWidth: 1125.w ,minHeight:175.h ),
                              child: Center(
                                child: Text(
                                  'Send OTP',
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
                                  fontSize: 42.sp,
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
