import 'package:eshop_app/colorsSys.dart';
import 'package:eshop_app/profile.dart';
import 'package:eshop_app/show_hide_icon_changepassword_33.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_current_password.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);


  @override
  State<SettingsScreen> createState() {
    return _SettingsScreenState();
  }
}

class _SettingsScreenState extends State<SettingsScreen> {

  //bool _isObscure = true;
  TextEditingController currentpasswordController = TextEditingController();
  TextEditingController newpasswordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(1440,2560),
        builder: (context,child)=>
    Scaffold(
      backgroundColor: ColorsSys.backgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            //p1
            Container(
              decoration: BoxDecoration(
                  color: Colors.white
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  //icon back
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context)=> ProfileScreen()));
                    },
                    child: Ink(
                      child: Container(
                        margin: EdgeInsets.only(left: 53.w,top: 46.h,bottom: 49.h),
                        padding: EdgeInsets.only(left: 44.w,top: 32.h,right: 43.9.w,bottom: 31.h),
                        height: 128.h,
                        width: 128.w,
                        decoration: BoxDecoration(
                          boxShadow: [
                            new BoxShadow(
                                color: Color(0xffE8E8E8),
                                offset: Offset(0.w, 0.h),
                                blurRadius: 1.r,
                                spreadRadius: 1.r
                            )
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24.r),
                        ),
                        child:Image(
                          image: AssetImage('assets/icons/Icon ionic-ios-arrow-back.png'),
                          width: 20.w,
                          height: 20.h,
                        ),
                      ),
                    ),
                  ),

                  //Text Favourite
                  Container(
                    height: 80.h,
                    width: 285.w,
                    decoration: BoxDecoration(
                    ),
                    margin: EdgeInsets.only(left: 55.w,top: 70.h,bottom: 73.h),
                    child: Text(
                      'Settings',
                      style: TextStyle(
                        color: ColorsSys.titleTextColor,
                        fontFamily: 'OpenSans_Semibold',
                        fontSize: 59.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 34.h,),

            //Change Password
            InkWell(
              onTap: (){
                showDialog(
                    context: context,
                    builder: (context)=>
                    SimpleDialog(
                      children: [
                        Container(

                          height: 1043.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            color: Colors.white,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 73.w,top: 77.h),
                                child:
                                Text("Change Password",style: TextStyle(
                                    color:   ColorsSys.titleTextColor,
                                    fontSize: 58.sp,
                                    fontFamily: 'OpenSans_Semibold'
                                ),),
                              ),

                              Divider(thickness: 5.sp,),

                              SizedBox(height: 80.h,),




                              //Current Password
                              //CurrentPasswordTextField(controller: currentpasswordController,),
                              ShowHideIconChangePassword33(
                                  controller: currentpasswordController,
                                  title: 'Current Password'),



                              SizedBox(height: 80.h,),

                              //New Password

                              ShowHideIconChangePassword33(
                                  controller: newpasswordController,
                                  title: 'New Password'),

                              SizedBox(height: 80.h,),

                              //Confirm Password
                              ShowHideIconChangePassword33(
                                  controller: confirmpasswordController,
                                  title: 'Confirm Password'),


                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  GestureDetector(
                                    onTap:(){
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(top: 75.6.h),
                                      child: Text('Cancel',
                                        style: TextStyle(
                                            color: Color(0xff52575C),
                                            fontSize: 55.sp,
                                            fontFamily: 'OpenSans_Semibold'
                                        ),),
                                    ),
                                  ),

                                  SizedBox(width: 88.w,),

                                  GestureDetector(
                                    onTap: (){

                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(top: 75.6.h,right: 102.w),
                                      child: Text('Save',
                                        style: TextStyle(
                                            color: ColorsSys.titleTextColor,
                                            fontSize: 55.sp,
                                            fontFamily: 'OpenSans_Semibold'
                                        ),),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                );
              },
              child:   Ink(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 53.w),
                  padding: EdgeInsets.only(left: 70.w,top: 61.h),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  width: 1334.w,
                  height: 186.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Container(
                        width: 623.w,
                        height: 64.h,
                        child: Text('Change Password',style: TextStyle(
                          fontSize: 48.sp,
                          fontFamily: 'OpenSans_Semibold',
                          color: Color(0xff52575C),
                        ),),
                      ),

                      SizedBox(width: 561.4.w,),

                      Container(
                        width: 23.26.w,
                        height: 48.04.h,
                        child: Image(
                          image: AssetImage('assets/images2/Path 5952.png'),
                          fit: BoxFit.fill,
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 34.h,),

            //Change Language
            Container(
              margin: EdgeInsets.symmetric(horizontal: 53.w),
              padding: EdgeInsets.only(left: 70.w,top: 61.h),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.r),
              ),
              width: 1334.w,
              height: 186.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                    width: 623.w,
                    height: 64.h,
                    child: Text('Change Language',style: TextStyle(
                      fontSize: 48.sp,
                      fontFamily: 'OpenSans_Semibold',
                      color: Color(0xff52575C),
                    ),),
                  ),

                  SizedBox(width: 561.4.w,),

                  Container(
                    width: 23.26.w,
                    height: 48.04.h,
                    child: Image(
                      image: AssetImage('assets/images2/Path 5952.png'),
                      fit: BoxFit.fill,
                    ),
                  ),

                ],
              ),
            ),

            SizedBox(height: 34.h,),

            //Change Theme
            Container(
              margin: EdgeInsets.symmetric(horizontal: 53.w),
              padding: EdgeInsets.only(left: 70.w,top: 61.h),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.r),
              ),
              width: 1334.w,
              height: 186.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                    width: 623.w,
                    height: 64.h,
                    child: Text('Change Theme',style: TextStyle(
                      fontSize: 48.sp,
                      fontFamily: 'OpenSans_Semibold',
                      color: Color(0xff52575C),
                    ),),
                  ),

                  SizedBox(width: 561.4.w,),

                  Container(
                    width: 23.26.w,
                    height: 48.04.h,
                    child: Image(
                      image: AssetImage('assets/images2/Path 5952.png'),
                      fit: BoxFit.fill,
                    ),
                  ),

                ],
              ),
            ),

            SizedBox(height: 34.h,),

            //Change Policy
            Container(
              margin: EdgeInsets.symmetric(horizontal: 53.w),
              padding: EdgeInsets.only(left: 70.w,top: 61.h),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.r),
              ),
              width: 1334.w,
              height: 186.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                    width: 623.w,
                    height: 64.h,
                    child: Text('Change Policy',style: TextStyle(
                      fontSize: 48.sp,
                      fontFamily: 'OpenSans_Semibold',
                      color: Color(0xff52575C),
                    ),),
                  ),

                  SizedBox(width: 561.4.w,),

                  Container(
                    width: 23.26.w,
                    height: 48.04.h,
                    child: Image(
                      image: AssetImage('assets/images2/Path 5952.png'),
                      fit: BoxFit.fill,
                    ),
                  ),

                ],
              ),
            ),

            SizedBox(height: 34.h,),

            //Change Term & Conditions
            Container(
              margin: EdgeInsets.symmetric(horizontal: 53.w),
              padding: EdgeInsets.only(left: 70.w,top: 61.h),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.r),
              ),
              width: 1334.w,
              height: 186.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                    width: 623.w,
                    height: 64.h,
                    child: Text('Term & Conditions',style: TextStyle(
                      fontSize: 48.sp,
                      fontFamily: 'OpenSans_Semibold',
                      color: Color(0xff52575C),
                    ),),
                  ),

                  SizedBox(width: 561.4.w,),

                  Container(
                    width: 23.26.w,
                    height: 48.04.h,
                    child: Image(
                      image: AssetImage('assets/images2/Path 5952.png'),
                      fit: BoxFit.fill,
                    ),
                  ),

                ],
              ),
            ),

            SizedBox(height: 1124.h,),



          ],
        ),
      ),
    ));
  }
}
