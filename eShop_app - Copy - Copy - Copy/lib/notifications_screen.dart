import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colorsSys.dart';
import 'home_screen_light.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEF2F9),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width:MediaQuery.of(context).size.width,
            height:MediaQuery.of(context).size.height,
            child:
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(height: 1.h,),

                //appbar
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return HomeScreenLight();
                          }));
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 53.w,top: 46.h,bottom: 49.h),
                          padding: EdgeInsets.only(left: 44.w,top: 32.h,right: 43.9.w,bottom: 31.h),
                          height: 128.h,
                          width: 128.w,
                          decoration: BoxDecoration(
                            boxShadow: [
                              new BoxShadow(
                                  color: Color(0xffE8E8E8),
                                  offset: Offset(0.5.w, 0.5.h),
                                  blurRadius: 1.r,
                                  spreadRadius: 1.r
                              )
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(24.r),
                          ),
                          child:Image(
                            image: AssetImage('assets/icons/Icon ionic-ios-arrow-back.png'),
                            width: 40.13.w,
                            height: 65.h,
                          ),
                        ),
                      ),

                      //Text Notifications
                      Container(
                        height: 80.h,
                        width: 365.w,
                        decoration: BoxDecoration(
                        ),
                        margin: EdgeInsets.only(left: 55.w,top: 70.h,bottom: 73.h),
                        child: Text(
                          'Notifications',
                          style: TextStyle(
                            color: ColorsSys.titleTextColor,
                            fontFamily: 'OpenSans_Semibold',
                            fontSize: 59.sp,
                          ),
                        ),
                      ),

                      //Icon Shop cart
                      InkWell(
                        onTap: (){},
                        child: Container(
                          padding: EdgeInsets.only(left: 29.2.w,right: 30.w,top: 32.h,bottom: 31.h ),
                          margin: EdgeInsets.only(left: 658.w,right: 53.w,top: 52.h,bottom: 43.h ),
                          width: 128.w,
                          height: 128.h,
                          decoration: BoxDecoration(
                            boxShadow: [
                              new BoxShadow(
                                  color: Color(0xffE8E8E8),
                                  offset: Offset(1.w, 1.h),
                                  blurRadius: 1.r,
                                  spreadRadius:1.r
                              )
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(24.r),
                          ),
                          child: Image(image: AssetImage('assets/images/Group 5447.png'),
                            fit: BoxFit.fill,
                            width: 68.8.w,height: 65.h,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 34.h,),

                //p2

                //
                Container(
                  margin: EdgeInsets.only(left: 53.w,right: 53.w),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      //1
                      Container(
                        height: 376.h,
                        width: 1334.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.r),
                          color: Colors.white,
                        ),
                        child: Stack(
                          children: [

                            //image
                            Container(
                              margin: EdgeInsets.only(left: 49.w,top: 99.h,right: 1107.w,bottom: 99.h),
                              width: 178.w,
                              height: 178.h,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [Color(0xffFFBD69),Color(0xffFF6363)],
                                )
                              ),
                              child: Image(
                                image: AssetImage('assets/images/splashlogo_1.png'),
                                fit: BoxFit.fill,
                                height: 178.h,
                                width: 178.w,
                              ),

                            ),

                            //Content
                            Container(
                              margin: EdgeInsets.only(left:291.w,top: 37.h,right: 112.w,bottom: 34.h),
                              width: 931.w,
                              height: 305.h,
                              child:Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  //Content1
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white
                                    ),
                                    width: 931.w,
                                    height: 244.h,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Your order is almost here...',
                                            style: TextStyle(
                                              color: ColorsSys.titleTextColor,
                                              fontSize: 62.sp,
                                              fontFamily: 'OpenSans_Semibold',
                                            )),
                                        Text('Meet your eShop valet at the door and collect your order with smile.',
                                            maxLines: 1,
                                            overflow: TextOverflow.clip,
                                            style: TextStyle(
                                              color: Color(0xff52575C),
                                              fontSize: 62.sp,
                                              fontFamily: 'OpenSans_Regular',
                                            )),
                                      ],
                                    ),
                                  ),

                                  SizedBox(height: 9.h,),

                                  //Content2
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white
                                    ),
                                    width: 564.w,
                                    height: 52.h,
                                    child: Text('17 Nov',
                                        style: TextStyle(
                                          color: Color(0xff999999),
                                          fontSize: 38.sp,
                                          fontFamily: 'OpenSans_Regular',
                                        )),
                                  ),

                                ],
                              ),
                            ),

                            //dot orange
                            Container(
                              margin: EdgeInsets.only(left:1271.w,top: 161.h,right: 37.w,bottom: 189.h),
                              width:26.w,
                              height: 26.h,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [Color(0xffFFBD69),Color(0xffFF6363)],
                                  )

                              ),
                            ),


                          ],
                        ),
                      ),

                      SizedBox(height: 34.h,),

                      //2
                      Container(
                        height: 290.h,
                        width: 1334.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.r),
                          color: Color(0xffEEF2F9),
                            boxShadow: [
                              new BoxShadow(
                                  color: Color(0xffE8E8E8),
                                  offset: Offset(0.w, 0.h),
                                  blurRadius: 4.r,
                                  spreadRadius:4.r
                              )
                            ]
                        ),
                        child: Stack(
                          children: [

                            //image
                            Container(
                              margin: EdgeInsets.only(left: 49.w,top: 56.h,right: 1107.w,bottom: 56.h),
                              width: 178.w,
                              height: 178.h,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    new BoxShadow(
                                        color: Color(0xffE8E8E8),
                                        offset: Offset(1.w, 1.h),
                                        blurRadius: 1.r,
                                        spreadRadius:1.r
                                    )
                                  ],
                                  shape: BoxShape.circle,
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [Color(0xffFFBD69),Color(0xffFF6363)],
                                  )
                              ),
                              child: Image(
                                image: AssetImage('assets/images/splashlogo_1.png'),
                                fit: BoxFit.fill,
                                height: 178.h,
                                width: 178.w,
                              ),

                            ),

                            //Content
                            Container(
                              margin: EdgeInsets.only(left:291.w,top: 37.h,right: 85.w,bottom: 33.h),
                              width: 958.w,
                              height: 220.h,
                              child:Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  //Content1
                                  Container(
                                    decoration: BoxDecoration(
                                        color: ColorsSys.backgroundColor
                                    ),
                                    width: 958.w,
                                    height: 160.h,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Tap here to track your order from eShop.',
                                            maxLines: 1,
                                            overflow: TextOverflow.clip,
                                            style: TextStyle(
                                              color: Color(0xff52575C),
                                              fontSize: 62.sp,
                                              fontFamily: 'OpenSans_Regular',
                                            )),
                                      ],
                                    ),
                                  ),

                                  SizedBox(height: 8.h,),

                                  //Content2
                                  Container(
                                    decoration: BoxDecoration(
                                        color: ColorsSys.backgroundColor
                                    ),
                                    width: 564.w,
                                    height: 52.h,
                                    child: Text('17 Nov',
                                        style: TextStyle(
                                          color: Color(0xff999999),
                                          fontSize: 38.sp,
                                          fontFamily: 'OpenSans_Regular',
                                        )),
                                  ),

                                ],
                              ),
                            ),

                            //dot orange
                            /*Container(
                              margin: EdgeInsets.only(left:1271.w,top: 161.h,right: 37.w,bottom: 189.h),
                              width:26.w,
                              height: 26.h,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [Color(0xffFFBD69),Color(0xffFF6363)],
                                  )

                              ),
                            ),*/


                          ],
                        ),
                      ),

                      SizedBox(height: 34.h,),

                      //3
                      Container(
                        height: 234.h,
                        width: 1334.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.r),
                            color: Colors.white,
                            boxShadow: [
                              new BoxShadow(
                                  color: Color(0xffE8E8E8),
                                  offset: Offset(0.w, 0.h),
                                  blurRadius: 4.r,
                                  spreadRadius:4.r
                              )
                            ]
                        ),
                        child: Stack(
                          children: [

                            //image
                            Container(
                              margin: EdgeInsets.only(left: 49.w,top: 28.h,right: 1107.w,bottom: 28.h),
                              width: 178.w,
                              height: 178.h,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [Color(0xffFFBD69),Color(0xffFF6363)],
                                  )
                              ),
                              child: Image(
                                image: AssetImage('assets/images/splashlogo_1.png'),
                                fit: BoxFit.fill,
                                height: 178.h,
                                width: 178.w,
                              ),

                            ),

                            //Content
                            Container(
                              margin: EdgeInsets.only(left:291.w,top: 50.h,right: 49.w,bottom: 47.h),
                              width: 994.w,
                              height: 137.h,
                              child:Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  //Content1
                                  Container(
                                    width: 994.w,
                                    height: 75.h,
                                    decoration: BoxDecoration(
                                      color: Colors.tealAccent
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        RichText(text: TextSpan(
                                          text: '50% OFF',
                                          style: TextStyle(
                                            color: ColorsSys.titleTextColor,
                                            fontFamily: 'OpenSans_Semibold',
                                            fontSize: 54.sp,
                                          ),
                                          children: [TextSpan(
                                            text: ' in all Electronics items',
                                            style: TextStyle(
                                              fontSize: 54.sp,
                                              fontFamily: 'OpenSans_Regular',
                                              color:Color(0xff52575C)
                                            ),
                                          ),
                                          ]
                                        ),)

                                      ],
                                    ),
                                  ),

                                  SizedBox(height: 10.h,),

                                  //Content2
                                  Container(
                                    width: 564.w,
                                    height: 52.h,
                                    child: Text('17 Nov',
                                        style: TextStyle(
                                          color: Color(0xff999999),
                                          fontSize: 38.sp,
                                          fontFamily: 'OpenSans_Regular',
                                        )),
                                  ),

                                ],
                              ),
                            ),

                            //dot orange
                            Container(
                              margin: EdgeInsets.only(left:1271.w,top: 112.h,right: 37.w,bottom: 96.h),
                              width:26.w,
                              height: 26.h,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [Color(0xffFFBD69),Color(0xffFF6363)],
                                  )

                              ),
                            ),



                          ],
                        ),
                      ),


                    ],
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
