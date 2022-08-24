import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colorsSys.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget{

  @override
  final Size preferredSize;

  TopBar({Key ?key,
    required this.Title,
  }) : preferredSize = Size.fromHeight((235).h);

  final String Title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 235.h,
          width: 1440.w,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              //icon back
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  margin: EdgeInsets.only(left: 53.w,top: 46.h,bottom: 49.h),
                  padding: EdgeInsets.only(left: 44.w,top: 32.h,right: 43.9.w,bottom: 31.h),
                  height: 128.h,
                  width: 128.w,
                  decoration: BoxDecoration(
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        offset: Offset(0.w, 0.h),
                        blurRadius: 10.r,
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

              //Edit Profile
              Container(
                height: 80.h,
                decoration: BoxDecoration(),
                margin:
                EdgeInsets.only(left: 55.w, top: 70.h, bottom: 73.h),
                child: Text(
                  Title,
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
      ),
    );
  }
}
