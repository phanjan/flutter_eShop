import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TestListProfile extends StatefulWidget {
  const TestListProfile({Key? key}) : super(key: key);

  @override
  State<TestListProfile> createState() => _TestListProfileState();
}

class _TestListProfileState extends State<TestListProfile> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(1440,2560),
      builder: (context,child)=>
      Scaffold(
        body: SafeArea(
          child:
          Container(
            width: 1277.96.w,
            height: 146.73.h,
            child: Stack(
              children: [

                //icon
                Container(
                  margin: EdgeInsets.only(top: 18.h),
                  height: 47.h,
                  width: 47.w,
                  child: Image(image: AssetImage('assets/images_15_profile/pro_myorder.png'),
                      fit: BoxFit.fill),
                ),

                Container(
                  padding: EdgeInsets.only(left: (69+47).w),
                  child: Text('My Orders',
                  style: TextStyle(
                    color: Color(0xff52575C),
                    fontFamily: 'OpenSans_Semibold',
                    fontSize: 60.sp,
                  ),),
                ),

                Container(
                  padding: EdgeInsets.only(left: (69+47).w,top: 140.h ),
                  child: Divider(
                    color: Color(0xff707070),
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

/*
* CardProfile(//0
      Image: 'assets/images_15_profile/pro_myorder.png',
      title: 'My Orders',),

  CardProfile(//1
      Image: 'assets/images_15_profile/pro_notification.png',
      title: 'Notifications'),

  CardProfile(//2
      Image: 'assets/images_15_profile/pro_favourite.png',
      title: 'Favourite'),

  CardProfile(//3
      Image: 'assets/images_15_profile/pro_setting.png',
      title: 'Settings'),

  CardProfile(//4
      Image: 'assets/images_15_profile/pro_address.png',
      title: 'Manage Address'),

  CardProfile(//5
      Image: 'assets/images_15_profile/pro_trackorder.png',
      title: 'Track Order'),

  CardProfile(//6
      Image: 'assets/images_15_profile/pro_customersupport.png',
      title: 'Customer Support'),

  CardProfile(//7
      Image: 'assets/images_15_profile/pro_rateus.png',
      title: 'Rate Us'),

  CardProfile(//8
      Image: 'assets/images_15_profile/pro_share.png',
      title: 'Share'),

  CardProfile(//9
      Image: 'assets/images_15_profile/pro_aboutus.png',
      title: 'About Us'),

  CardProfile(//10
      Image: 'assets/images_15_profile/pro_logout.png',
      title: 'Logout'),*/
