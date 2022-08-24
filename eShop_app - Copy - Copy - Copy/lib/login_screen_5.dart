import 'package:eshop_app/empty_cart_screen.dart';
import 'package:eshop_app/no_internet_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colorsSys.dart';
class LoginScreen5 extends StatefulWidget {
  const LoginScreen5({Key? key}) : super(key: key);

  @override
  State<LoginScreen5> createState() => _LoginScreen5State();
}

class _LoginScreen5State extends State<LoginScreen5> {

  bool _isObscureText = true;

  bool? _showpassword= false;

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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context){
                                    return NoInternetScreen();
                                  }));
                                },
                                icon: Icon(Icons.signal_wifi_connected_no_internet_4,size: 50.sp,) ),
                            SizedBox(width: 25.w,),
                            IconButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context){
                                    return EmptyCartScreen();
                                  }));
                                },
                                icon: Icon(Icons.shopping_cart,size: 50.sp,) ),
                          ],
                        ),

                        SizedBox(height: 41.h,),

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


                              Text('User Details',
                                style: TextStyle(
                                  fontSize: 75.sp,
                                  color: ColorsSys.titleTextColor,
                                  fontFamily: 'OpenSans_Bold',
                                  //height:
                                ),),


                              SizedBox(height: 166.h,),

                              //
                          TextField(
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
                                labelText: "Set User name",
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

                          Container(
                            child: Stack(
                              children: [

                                //Set Password
                                TextField(
                                  obscureText: _isObscureText,
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
                                      labelText: "Set Password",
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

                                //Check box Show Password
                                Container(
                                  margin: EdgeInsets.only(left: (750-180).w,top: 140.h),
                                  // decoration: BoxDecoration(
                                  //     color: Colors.tealAccent
                                  // ),
                                  child: Stack(
                                    children: [

                                      Container(
                                        child: Checkbox(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(15.r),
                                          ),
                                          checkColor: Color(0xff047BD5),
                                          activeColor: ColorsSys.backgroundColor,
                                          value: _showpassword,
                                          onChanged: (value) {
                                            setState(() {
                                              _showpassword = value;
                                            });
                                          },
                                          //selected: _showpassword,
                                        ),
                                      ),

                                      Container(
                                        margin: EdgeInsets.only(left: 160.w,top:55.h),
                                        // decoration: BoxDecoration(
                                        //     color: Colors.white
                                        // ),
                                        child: Text("Show Password",
                                            style: TextStyle(
                                                color: ColorsSys.subtitleTextColor,
                                                fontSize: 52.sp,
                                                fontFamily: 'OpenSans_Regular')),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),





                              SizedBox(height: 60.h,),


                              //btn Submit
                              Container(
                                height: 175.h,
                                width: 1125.w,
                                child: RaisedButton(
                                  onPressed: (){

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
                                          'Submit',
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
                                        text: "Already a customer? ",
                                        style: TextStyle(
                                          fontSize: 42.sp,
                                          fontFamily: 'OpenSans_Light',
                                          color: ColorsSys.subtitleTextColor,
                                        ),
                                        children: [
                                          TextSpan(
                                              text: 'Log in',
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


