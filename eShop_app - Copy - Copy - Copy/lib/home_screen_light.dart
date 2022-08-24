import 'package:eshop_app/colorsSys.dart';
import 'package:eshop_app/con.dart';
import 'package:eshop_app/notifications_screen.dart';
import 'package:eshop_app/profile.dart';
import 'package:eshop_app/shopping_cart_17.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'favourite_screen.dart';

class HomeScreenLight extends StatefulWidget {
  const HomeScreenLight({Key? key}) : super(key: key);

  @override
  State<HomeScreenLight> createState() => _HomeScreenLightState();
}

class _HomeScreenLightState extends State<HomeScreenLight>
    with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        child: Container(
          width: 232.55.w,
          height: 232.55.h,
          //margin: EdgeInsets.only(left:112.5.w ),
          padding: EdgeInsets.all(78.sp),
          child: ImageIcon(
            AssetImage('assets/appbars/sel_home.png'),
            color: Color(0xffFC6A57),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 8,
        shape: CircularNotchedRectangle(),
        color: Colors.white,
        child: Container(
          height: 306.33.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [

              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return FavouriteScreen();
                  }));
                },
                child: Container(
                  width: 75.w,
                  height: 75.h,
                  margin: EdgeInsets.only(
                      left: (380).w, bottom: 179.h, top: 50.4.h),
                  child: ImageIcon(
                    AssetImage('assets/appbars/desel_fav.png'),
                    color: Color(0xffFDC994),
                  ),
                ),
              ),

              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                  return NotificationsScreen();
                }));},
                child: Container(
                  width: 75.w,
                  height: 75.h,
                  margin: EdgeInsets.only(bottom: 179.h, top: 50.4.h),
                  child: ImageIcon(
                    AssetImage('assets/appbars/desel_notification.png'),
                    color: Color(0xffFDC994),
                  ),
                ),
              ),

              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return ProfileScreen();
                  }));
                },
                child: Container(
                  width: 75.w,
                  height: 75.h,
                  margin: EdgeInsets.only(bottom: 179.h, top: 50.4.h),
                  child: ImageIcon(
                    AssetImage('assets/appbars/user_1.png'),
                    color: Color(0xffFDC994),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      backgroundColor: ColorsSys.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(color: ColorsSys.backgroundColor),
            margin: EdgeInsets.symmetric(horizontal: 53.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Logo and btn Shoping Cart
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 23.5.w, top: 57.h),
                      child: Image(
                        image: AssetImage('assets/images/titleicon.png'),
                        height: 128.h,
                        width: 557.29.w,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 625.2.w,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return ShoppingCartSCrenn17();
                        }));
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 57.h),
                        padding: EdgeInsets.all(28.sp),
                        width: 128.w,
                        height: 128.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24.r),
                        ),
                        child: ImageIcon(
                          AssetImage(
                            'assets/images/noti_cart.png',
                          ),
                          color: Color(0xffFC6A57),
                          //size: 10.sp,
                        ),
                      ),
                    ),
                  ],
                ),

                //
                SizedBox(
                  height: 73.h,
                ),

                //P2 textfield - search - ???
                Container(
                  width: 1334.w,
                  height: 144.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(72.r),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 575.w,
                        height: 65.h,
                        padding: EdgeInsets.only(left: 98.w),
                        child: TextField(
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 48.sp,
                              fontFamily: 'OpenSans_Regular'),
                          decoration: InputDecoration.collapsed(
                            hintText: 'Find Grocery items here ...',
                            hintStyle: TextStyle(
                                color: Color(0xff4543C1).withOpacity(0.3),
                                fontSize: 48.sp,
                                fontFamily: 'OpenSans_Regular'),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 245.w,
                      ),
                      Container(
                        width: 128.w,
                        height: 128.h,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(24.r),
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/filter_search.png'))),
                      ),
                      SizedBox(
                        width: 182.w,
                      ),
                      Container(
                        height: 54.63.h,
                        width: 52.w,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/filter.png'),
                                fit: BoxFit.fill)),
                      ),
                    ],
                  ),
                ),

                //
                SizedBox(
                  height: 40.h,
                ),

                //Page View
                Container(
                  //width: 1334.w,
                  height: 664.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(36.r),
                  ),
                  child: Image(
                    image: AssetImage('assets/images1/4021588.png'),
                      fit: BoxFit.fill,
                  ),
                  // child:Expanded(
                  //   child: CON(),
                  // ),
                ),

                //
                SizedBox(
                  height: 45.h,
                ),

                //Categories
                Container(
                  width: 1334.w,
                  height: 143.h,
                  decoration: BoxDecoration(
                    color: ColorsSys.backgroundColor,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Categories',
                        style: TextStyle(
                          fontSize: 60.sp,
                          fontFamily: 'OpenSans_Semibold',
                          color: ColorsSys.titleTextColor,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 886.w, top: 25.h),
                        child: Text(
                          'See all',
                          style: TextStyle(
                            color: Color(0xffFC6A57),
                            fontFamily: 'OpenSans_Semibold',
                            fontSize: 42.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 0.h,
                ),

                //Household
                Container(
                  width: 1334.w,
                  height: 287.h,
                  decoration: BoxDecoration(color: ColorsSys.backgroundColor),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 60.w, vertical: 62.h),
                            width: 205.w,
                            height: 205.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Image(
                              image: AssetImage('assets/images/browser.png'),
                            ),
                          ),
                          SizedBox(
                            height: 22.h,
                          ),
                          Container(
                            child: Text(
                              'Household',
                              style: TextStyle(
                                color: ColorsSys.titleTextColor,
                                fontSize: 42.sp,
                                fontFamily: 'OpenSans_Semibold',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 60.w, vertical: 62.h),
                            width: 205.w,
                            height: 205.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Image(
                              image:
                                  AssetImage('assets/images/supermarket.png'),
                            ),
                          ),
                          SizedBox(
                            height: 22.h,
                          ),
                          Container(
                            child: Text(
                              'Grocery',
                              style: TextStyle(
                                color: ColorsSys.titleTextColor,
                                fontSize: 42.sp,
                                fontFamily: 'OpenSans_Semibold',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 60.w, vertical: 62.h),
                            width: 205.w,
                            height: 205.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Image(
                              image:
                                  AssetImage('assets/images/coctail-glass.png'),
                            ),
                          ),
                          SizedBox(
                            height: 22.h,
                          ),
                          Container(
                            child: Text(
                              'Liquor',
                              style: TextStyle(
                                color: ColorsSys.titleTextColor,
                                fontSize: 42.sp,
                                fontFamily: 'OpenSans_Semibold',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 60.w, vertical: 62.h),
                            width: 205.w,
                            height: 205.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Image(
                              image: AssetImage('assets/images/burger.png'),
                            ),
                          ),
                          SizedBox(
                            height: 22.h,
                          ),
                          Container(
                            child: Text(
                              'Chilled',
                              style: TextStyle(
                                color: ColorsSys.titleTextColor,
                                fontSize: 42.sp,
                                fontFamily: 'OpenSans_Semibold',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 60.w, vertical: 62.h),
                            width: 205.w,
                            height: 205.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Image(
                              image: AssetImage('assets/images/water.png'),
                            ),
                          ),
                          SizedBox(
                            height: 22.h,
                          ),
                          Container(
                            child: Text(
                              'Beverage',
                              style: TextStyle(
                                color: ColorsSys.titleTextColor,
                                fontSize: 42.sp,
                                fontFamily: 'OpenSans_Semibold',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),

                //
                SizedBox(
                  height: 123.h,
                ),

                //New Arrival
                Container(
                  width: 1334.w,
                  height: 2006.h,
                  decoration: BoxDecoration(
                    color: ColorsSys.backgroundColor,
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 1334.w,
                        height: 82.h,
                        decoration: BoxDecoration(
                          color: ColorsSys.backgroundColor,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'New Arrival',
                              style: TextStyle(
                                fontSize: 60.sp,
                                fontFamily: 'OpenSans_Semibold',
                                color: ColorsSys.titleTextColor,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 855.w, top: 25.h),
                              child: Text(
                                'See all',
                                style: TextStyle(
                                  color: Color(0xffFC6A57),
                                  fontFamily: 'OpenSans_Semibold',
                                  fontSize: 42.sp,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              //Number 1
                              Container(
                                height: 922.h,
                                width: 657.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.r),
                                    color: Colors.white),
                                child: Stack(
                                  children: [
                                    Image(
                                        image: AssetImage(
                                            'assets/images/NoPath - Copy (7).png')),

                                    // Diwali Sale
                                    Container(
                                      margin: EdgeInsets.only(
                                          left: 35.w,
                                          top: 603.h,
                                          right: 406.w,
                                          bottom: 261.h),
                                      height: 58.h,
                                      width: 216.w,
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.centerLeft,
                                            end: Alignment.centerRight,
                                            colors: [
                                              Color(0xffFDCD96),
                                              Color(0xffFE7E7B)
                                            ],
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.r),
                                          border: Border.all(
                                              color: Colors.white, width: 3.w)),
                                      child: Container(
                                        child: Center(
                                          child: Text(
                                            'Diwali Sale',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 31.7.sp,
                                              fontFamily: 'OpenSans_Regular',
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),

                                    //Content
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: 681.h,
                                          bottom: 30.h,
                                          left: 24.w,
                                          right: 25.w),
                                      height: 211.h,
                                      width: 608.w,
                                      decoration:
                                          BoxDecoration(color: Colors.white),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Photo Printer Color HP Plus S...',
                                            style: TextStyle(
                                                color: Color(0xff52575C),
                                                fontSize: 39.sp,
                                                fontFamily: 'OpenSans_Regular'),
                                          ),
                                          SizedBox(
                                            height: 9.h,
                                          ),
                                          Text(
                                            'Rs. 1,896.48',
                                            style: TextStyle(
                                                color: ColorsSys.titleTextColor,
                                                fontSize: 57.8.sp,
                                                fontFamily:
                                                    'OpenSans_Semibold'),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Stack(
                                                children: [
                                                  Text(
                                                    'Rs. 3,059.01',
                                                    style: TextStyle(
                                                        fontSize: 42.sp,
                                                        color:
                                                            Color(0xff999999),
                                                        fontFamily:
                                                            'OpenSans_Regular'),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        top: 30.h),
                                                    width: 234.w,
                                                    height: 2.h,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Color(0xff999999)),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                width: 20.w,
                                              ),
                                              Container(
                                                height: 41.45.h,
                                                width: 4.w,
                                                decoration: BoxDecoration(
                                                  color: Color(0xffFE7E7B),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 20.w,
                                              ),
                                              Text(
                                                '-38%',
                                                style: TextStyle(
                                                    fontSize: 36.sp,
                                                    color: Color(0xffFE7E7B),
                                                    fontFamily:
                                                        'OpenSans_Regular'),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(
                                width: 20.w,
                              ),

                              //Number 2
                              Container(
                                height: 922.h,
                                width: 657.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.r),
                                    color: Colors.white),
                                child: Stack(
                                  children: [
                                    Image(
                                        image: AssetImage(
                                            'assets/images/NoPath - Copy (8).png')),

                                    //Diwali Sale
                                    Container(
                                      margin: EdgeInsets.only(
                                          left: 35.w,
                                          top: 603.h,
                                          right: 406.w,
                                          bottom: 261.h),
                                      height: 58.h,
                                      width: 216.w,
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.centerLeft,
                                            end: Alignment.centerRight,
                                            colors: [
                                              Color(0xffFDCD96),
                                              Color(0xffFE7E7B)
                                            ],
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.r),
                                          border: Border.all(
                                              color: Colors.white, width: 3.w)),
                                      child: Container(
                                        child: Center(
                                          child: Text(
                                            'Diwali Sale',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 31.7.sp,
                                              fontFamily: 'OpenSans_Regular',
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),

                                    //Content
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: 681.h,
                                          bottom: 30.h,
                                          left: 24.w,
                                          right: 25.w),
                                      height: 211.h,
                                      width: 608.w,
                                      decoration:
                                          BoxDecoration(color: Colors.white),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Photo Printer Color HP Plus S...',
                                            style: TextStyle(
                                                color: Color(0xff52575C),
                                                fontSize: 39.sp,
                                                fontFamily: 'OpenSans_Regular'),
                                          ),
                                          SizedBox(
                                            height: 9.h,
                                          ),
                                          Text(
                                            'Rs. 1,896.48',
                                            style: TextStyle(
                                                color: ColorsSys.titleTextColor,
                                                fontSize: 57.8.sp,
                                                fontFamily:
                                                    'OpenSans_Semibold'),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Stack(
                                                children: [
                                                  Text(
                                                    'Rs. 3,059.01',
                                                    style: TextStyle(
                                                        fontSize: 42.sp,
                                                        color:
                                                            Color(0xff999999),
                                                        fontFamily:
                                                            'OpenSans_Regular'),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        top: 30.h),
                                                    width: 234.w,
                                                    height: 2.h,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Color(0xff999999)),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                width: 20.w,
                                              ),
                                              Container(
                                                height: 41.45.h,
                                                width: 4.w,
                                                decoration: BoxDecoration(
                                                  color: Color(0xffFE7E7B),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 20.w,
                                              ),
                                              Text(
                                                '-38%',
                                                style: TextStyle(
                                                    fontSize: 36.sp,
                                                    color: Color(0xffFE7E7B),
                                                    fontFamily:
                                                        'OpenSans_Regular'),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 40.h,
                          ),
                          Row(
                            children: [
                              //Number 3
                              Container(
                                height: 922.h,
                                width: 657.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.r),
                                    color: Colors.white),
                                child: Stack(
                                  children: [
                                    Image(
                                        image: AssetImage(
                                            'assets/images/NoPath - Copy (9).png')),

                                    // Diwali Sale
                                    /*Container(
                                      margin: EdgeInsets.only(left: 35.w,top: 603.h,right: 406.w,bottom: 261.h),
                                      height: 58.h,
                                      width: 216.w,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                          colors: [Color(0xffFDCD96),Color(0xffFE7E7B)],
                                        ),
                                        borderRadius: BorderRadius.circular(8.r),
                                        border: Border.all(
                                          color: Colors.white,
                                          width: 3.w
                                        ),
                                      ),
                                      child: Container(
                                        child: Center(
                                          child: Text(
                                            'Diwali Sale',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 38.sp,
                                              fontFamily: 'OpenSans_Regular',
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),*/

                                    //  Content
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: 681.h,
                                          bottom: 30.h,
                                          left: 24.w,
                                          right: 25.w),
                                      height: 211.h,
                                      width: 608.w,
                                      decoration:
                                          BoxDecoration(color: Colors.white),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Photo Printer Color HP Plus S...',
                                            style: TextStyle(
                                                color: Color(0xff52575C),
                                                fontSize: 39.sp,
                                                fontFamily: 'OpenSans_Regular'),
                                          ),
                                          SizedBox(
                                            height: 9.h,
                                          ),
                                          Text(
                                            'Rs. 1,896.48',
                                            style: TextStyle(
                                                color: ColorsSys.titleTextColor,
                                                fontSize: 57.8.sp,
                                                fontFamily:
                                                    'OpenSans_Semibold'),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Stack(
                                                children: [
                                                  Text(
                                                    'Rs. 3,059.01',
                                                    style: TextStyle(
                                                        fontSize: 42.sp,
                                                        color:
                                                            Color(0xff999999),
                                                        fontFamily:
                                                            'OpenSans_Regular'),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        top: 30.h),
                                                    width: 234.w,
                                                    height: 2.h,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Color(0xff999999)),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                width: 20.w,
                                              ),
                                              Container(
                                                height: 41.45.h,
                                                width: 4.w,
                                                decoration: BoxDecoration(
                                                  color: Color(0xffFE7E7B),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 20.w,
                                              ),
                                              Text(
                                                '-38%',
                                                style: TextStyle(
                                                    fontSize: 36.sp,
                                                    color: Color(0xffFE7E7B),
                                                    fontFamily:
                                                        'OpenSans_Regular'),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),

                                    //  Green Circle
                                    Container(
                                      margin: EdgeInsets.only(
                                          left: 581.w,
                                          top: 572.h,
                                          bottom: 294.h,
                                          right: 20.w),
                                      height: 56.h,
                                      width: 56.w,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                              color: Color(0xff29772F),
                                              width: 2.w)),
                                      child: Container(
                                        height: 36.h,
                                        width: 36.w,
                                        margin: EdgeInsets.all(10.sp),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xff29772F),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(
                                width: 20.w,
                              ),

                              // number 4
                              Container(
                                height: 922.h,
                                width: 657.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.r),
                                    color: Colors.white),
                                child: Stack(
                                  children: [
                                    Image(
                                        image: AssetImage(
                                            'assets/images/NoPath - Copy (10).png')),

                                    // Diwali Sale
                                    Container(
                                      margin: EdgeInsets.only(
                                          left: 35.w,
                                          top: 603.h,
                                          right: 406.w,
                                          bottom: 261.h),
                                      height: 58.h,
                                      width: 216.w,
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.centerLeft,
                                            end: Alignment.centerRight,
                                            colors: [
                                              Color(0xffFDCD96),
                                              Color(0xffFE7E7B)
                                            ],
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.r),
                                          border: Border.all(
                                              color: Colors.white, width: 3.w)),
                                      child: Container(
                                        child: Center(
                                          child: Text(
                                            'Diwali Sale',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 31.7.sp,
                                              fontFamily: 'OpenSans_Regular',
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),

                                    //Content
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: 681.h,
                                          bottom: 30.h,
                                          left: 24.w,
                                          right: 25.w),
                                      height: 211.h,
                                      width: 608.w,
                                      decoration:
                                          BoxDecoration(color: Colors.white),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Photo Printer Color HP Plus S...',
                                            style: TextStyle(
                                                color: Color(0xff52575C),
                                                fontSize: 39.sp,
                                                fontFamily: 'OpenSans_Regular'),
                                          ),
                                          SizedBox(
                                            height: 9.h,
                                          ),
                                          Text(
                                            'Rs. 1,896.48',
                                            style: TextStyle(
                                                color: ColorsSys.titleTextColor,
                                                fontSize: 59.sp,
                                                fontFamily:
                                                    'OpenSans_Semibold'),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Stack(
                                                children: [
                                                  Text(
                                                    'Rs. 3,059.01',
                                                    style: TextStyle(
                                                        fontSize: 37.8.sp,
                                                        color:
                                                            Color(0xff999999),
                                                        fontFamily:
                                                            'OpenSans_Regular'),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        top: 30.h),
                                                    width: 234.w,
                                                    height: 2.h,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Color(0xff999999)),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                width: 20.w,
                                              ),
                                              Container(
                                                height: 41.45.h,
                                                width: 4.w,
                                                decoration: BoxDecoration(
                                                  color: Color(0xffFE7E7B),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 20.w,
                                              ),
                                              Text(
                                                '-38%',
                                                style: TextStyle(
                                                    fontSize: 36.sp,
                                                    color: Color(0xffFE7E7B),
                                                    fontFamily:
                                                        'OpenSans_Regular'),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),

                                    //  Red Circle
                                    Container(
                                      margin: EdgeInsets.only(
                                          left: 581.w,
                                          top: 572.h,
                                          bottom: 294.h,
                                          right: 20.w),
                                      height: 56.h,
                                      width: 56.w,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                              color: Color(0xffB40000),
                                              width: 2.w)),
                                      child: Container(
                                        height: 36.h,
                                        width: 36.w,
                                        margin: EdgeInsets.all(10.sp),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xffB40000),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 115.h,
                ),

                // Black Friday Sale
                Container(
                  height: 416.h,
                  width: 1334.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.r),
                      image: DecorationImage(
                        image: AssetImage('assets/images/211.png'),
                        fit: BoxFit.fill,
                      )),
                ),

                SizedBox(
                  height: 93.h,
                ),

                //Diwali Sale Special
                Container(
                  height: 697.h,
                  width: 1334.w,
                  decoration: BoxDecoration(color: ColorsSys.backgroundColor),
                  child: Column(
                    children: [
                      //Diwali sale special + see all
                      Container(
                        width: 1334.w,
                        height: 82.h,
                        decoration: BoxDecoration(
                          color: ColorsSys.backgroundColor,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Diwali Sale Special',
                              style: TextStyle(
                                fontSize: 60.sp,
                                fontFamily: 'OpenSans_Semibold',
                                color: ColorsSys.titleTextColor,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 662.w, top: (118 - 93).h),
                              child: Text(
                                'See all',
                                style: TextStyle(
                                  color: Color(0xffFC6A57),
                                  fontFamily: 'OpenSans_Semibold',
                                  fontSize: 42.sp,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 40.h,
                      ),

                      Container(
                        height: 575.h,
                        width: 1334.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // p1
                            Container(
                              height: 575.h,
                              width: 436.w,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30.r)),
                              child: Stack(
                                children: [
                                  Image(
                                    image: AssetImage(
                                        'assets/images/NoPath - Copy (14).png'),
                                    fit: BoxFit.fill,
                                    width: 436.w,
                                    height: 430.h,
                                  ),

                                  //Diwali Sale
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 23.w,
                                        top: 400.h,
                                        right: 269.w,
                                        bottom: 137.h),
                                    height: 44.h,
                                    width: 150.w,
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                          colors: [
                                            Color(0xffFDCD96),
                                            Color(0xffFE7E7B)
                                          ],
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.r),
                                        border: Border.all(
                                            color: Colors.white, width: 3.w)),
                                    child: Container(
                                      child: Center(
                                        child: Text(
                                          'Diwali Sale',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25.sp,
                                            fontFamily: 'OpenSans_Regular',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                  //Content
                                  Container(
                                    width: 396.w,
                                    height: 96.h,
                                    margin: EdgeInsets.only(
                                        left: 20.w,
                                        right: 20.w,
                                        top: 458.h,
                                        bottom: 21.h),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Photo Printer Color HP ...',
                                          style: TextStyle(
                                              color: Color(0xff52575C),
                                              fontSize: 32.sp,
                                              fontFamily: 'OpenSans_Regular'),
                                        ),
                                        SizedBox(
                                          height: 0.h,
                                        ),
                                        Text(
                                          'Rs. 1,896.48',
                                          style: TextStyle(
                                              color: ColorsSys.titleTextColor,
                                              fontSize: 34.5.sp,
                                              fontFamily: 'OpenSans_Semibold'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //p2
                            Container(
                              height: 575.h,
                              width: 436.w,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30.r)),
                              child: Stack(
                                children: [
                                  Image(
                                    image: AssetImage(
                                        'assets/images/NoPath - Copy (12).png'),
                                    fit: BoxFit.fill,
                                    width: 436.w,
                                    height: 430.h,
                                  ),

                                  //Diwali Sale
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 23.w,
                                        top: 400.h,
                                        right: 269.w,
                                        bottom: 137.h),
                                    height: 44.h,
                                    width: 150.w,
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                          colors: [
                                            Color(0xffFDCD96),
                                            Color(0xffFE7E7B)
                                          ],
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.r),
                                        border: Border.all(
                                            color: Colors.white, width: 3.w)),
                                    child: Container(
                                      child: Center(
                                        child: Text(
                                          'Diwali Sale',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25.sp,
                                            fontFamily: 'OpenSans_Regular',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                  //Content
                                  Container(
                                    width: 396.w,
                                    height: 96.h,
                                    margin: EdgeInsets.only(
                                        left: 20.w,
                                        right: 20.w,
                                        top: 458.h,
                                        bottom: 21.h),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Photo Printer Color HP ...',
                                          style: TextStyle(
                                              color: Color(0xff52575C),
                                              fontSize: 32.sp,
                                              fontFamily: 'OpenSans_Regular'),
                                        ),
                                        SizedBox(
                                          height: 0.h,
                                        ),
                                        Text(
                                          'Rs. 1,896.48',
                                          style: TextStyle(
                                              color: ColorsSys.titleTextColor,
                                              fontSize: 34.5.sp,
                                              fontFamily: 'OpenSans_Semibold'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //p3
                            Container(
                              height: 575.h,
                              width: 436.w,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30.r)),
                              child: Stack(
                                children: [
                                  Image(
                                    image: AssetImage(
                                        'assets/images/NoPath - Copy (13).png'),
                                    fit: BoxFit.fill,
                                    width: 436.w,
                                    height: 430.h,
                                  ),

                                  //Diwali Sale
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 23.w,
                                        top: 400.h,
                                        right: 269.w,
                                        bottom: 137.h),
                                    height: 44.h,
                                    width: 150.w,
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                          colors: [
                                            Color(0xffFDCD96),
                                            Color(0xffFE7E7B)
                                          ],
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.r),
                                        border: Border.all(
                                            color: Colors.white, width: 3.w)),
                                    child: Container(
                                      child: Center(
                                        child: Text(
                                          'Diwali Sale',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25.sp,
                                            fontFamily: 'OpenSans_Regular',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                  //Content
                                  Container(
                                    width: 396.w,
                                    height: 96.h,
                                    margin: EdgeInsets.only(
                                        left: 20.w,
                                        right: 20.w,
                                        top: 458.h,
                                        bottom: 21.h),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Photo Printer Color HP ...',
                                          style: TextStyle(
                                              color: Color(0xff52575C),
                                              fontSize: 32.sp,
                                              fontFamily: 'OpenSans_Regular'),
                                        ),
                                        SizedBox(
                                          height: 0.h,
                                        ),
                                        Text(
                                          'Rs. 1,896.48',
                                          style: TextStyle(
                                              color: ColorsSys.titleTextColor,
                                              fontSize: 34.5.sp,
                                              fontFamily: 'OpenSans_Semibold'),
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
                    ],
                  ),
                ),

                SizedBox(
                  height: 123.h,
                ),

                //Last
                Container(
                  height: 928.h,
                  width: 1334.w,
                  decoration: BoxDecoration(
                    color: ColorsSys.backgroundColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 928.h,
                        width: 657.w,
                        decoration: BoxDecoration(
                          color: ColorsSys.backgroundColor,
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                        child: Stack(
                          children: [
                            Image(
                              image: AssetImage(
                                  'assets/images/NoPath - Copy (24).png'),
                              fit: BoxFit.fill,
                              height: 648.h,
                              width: 657.w,
                            ),

                            //Gradient
                            Container(
                              height: 280.h,
                              width: 657.w,
                              margin: EdgeInsets.only(top: 648.h),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(30.r),
                                    bottomRight: Radius.circular(30.r),
                                  ),
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Color(0xffFFFFFF),
                                        Color(0xffFE7E7B)
                                      ])),
                            ),

                            //Content
                            Container(
                              margin: EdgeInsets.only(
                                  top: 681.h,
                                  left: 24.w,
                                  bottom: 50.h,
                                  right: 24.w),
                              height: 197.h,
                              width: 609.w,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 57.h,
                                    width: 609.w,
                                    child: Text(
                                      'Popular Shoes for women',
                                      style: TextStyle(
                                          color: Color(0xff52575C),
                                          fontFamily: 'OpenSans_Bold',
                                          fontSize: 42.sp),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12.h,
                                  ),
                                  Container(
                                    height: 49.h,
                                    width: 609.w,
                                    child: Text(
                                      'More To Explore',
                                      style: TextStyle(
                                          color: Color(0xffFC6A57),
                                          fontFamily: 'OpenSans_Regular',
                                          fontSize: 36.sp),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 24.h,
                                  ),
                                  Container(
                                    height: 55.h,
                                    width: 199.w,
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                          colors: [
                                            Color(0xffFDCD96),
                                            Color(0xffFE7E7B)
                                          ],
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(28.r)),
                                    child: Center(
                                      child: Text(
                                        'View more',
                                        style: TextStyle(
                                            fontSize: 32.sp,
                                            fontFamily: 'OpenSans_Regular',
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 928.h,
                        width: 657.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.r),
                            color: Colors.white),
                        child: Stack(
                          children: [
                            Image(
                                image: AssetImage(
                                    'assets/images/NoPath - Copy (23).png')),

                            // Diwali Sale
                            Container(
                              margin: EdgeInsets.only(
                                  left: 35.w,
                                  top: 603.h,
                                  right: 406.w,
                                  bottom: 261.h),
                              height: 58.h,
                              width: 216.w,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color(0xffFDCD96),
                                      Color(0xffFE7E7B)
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(8.r),
                                  border: Border.all(
                                      color: Colors.white, width: 3.w)),
                              child: Container(
                                child: Center(
                                  child: Text(
                                    'Diwali Sale',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 31.8.sp,
                                      fontFamily: 'OpenSans_Regular',
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            //Content
                            Container(
                              margin: EdgeInsets.only(
                                  top: 681.h,
                                  bottom: 30.h,
                                  left: 24.w,
                                  right: 25.w),
                              height: 211.h,
                              width: 608.w,
                              decoration: BoxDecoration(color: Colors.white),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Photo Printer Color HP Plus S...',
                                    style: TextStyle(
                                        color: Color(0xff52575C),
                                        fontSize: 37.8.sp,
                                        fontFamily: 'OpenSans_Regular'),
                                  ),
                                  SizedBox(
                                    height: 9.h,
                                  ),
                                  Text(
                                    'Rs. 1,896.48',
                                    style: TextStyle(
                                        color: ColorsSys.titleTextColor,
                                        fontSize: 57.sp,
                                        fontFamily: 'OpenSans_Semibold'),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Stack(
                                        children: [
                                          Text(
                                            'Rs. 3,059.01',
                                            style: TextStyle(
                                                fontSize: 42.sp,
                                                color: Color(0xff999999),
                                                fontFamily: 'OpenSans_Regular'),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 30.h),
                                            width: 234.w,
                                            height: 2.h,
                                            decoration: BoxDecoration(
                                                color: Color(0xff999999)),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 20.w,
                                      ),
                                      Container(
                                        height: 41.45.h,
                                        width: 4.w,
                                        decoration: BoxDecoration(
                                          color: Color(0xffFE7E7B),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20.w,
                                      ),
                                      Text(
                                        '-38%',
                                        style: TextStyle(
                                            fontSize: 36.sp,
                                            color: Color(0xffFE7E7B),
                                            fontFamily: 'OpenSans_Regular'),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                SizedBox(
                  height: 364.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

/*
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    print('Run initstate()');
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
    print('Run dispose()');
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.paused) {
      print('App is in Background mode');
    } else if (state == AppLifecycleState.resumed) {
      print('App is in Foreground mode');
    }
  }

  */
}
