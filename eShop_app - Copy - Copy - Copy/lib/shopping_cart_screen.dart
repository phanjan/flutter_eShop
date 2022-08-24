import 'package:eshop_app/home_screen_light.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colorsSys.dart';

class ShoppingCartScreen extends StatefulWidget {
  const ShoppingCartScreen({Key? key}) : super(key: key);

  @override
  State<ShoppingCartScreen> createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          builder: (context)=> HomeScreenLight()));
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
                      'Shopping Cart',
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

          ],
        ),
      ),
    );
  }
}
