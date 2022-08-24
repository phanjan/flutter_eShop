import 'package:eshop_app/colorsSys.dart';
import 'package:eshop_app/home_screen_light.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //1
                    Container(
                      width: 1440.w,
                      height: 1393.h,
                      child: Stack(
                        children: [

                          Image(image: AssetImage('assets/images1/slider.png'),
                            fit: BoxFit.fill,
                            width: 1440.w,
                            height: 1393.h,
                          ),

                          //Icon
                          Container(
                            margin: EdgeInsets.only(left: 53.w,top: 65.h,right: 53.w,bottom: 1096.h),
                            width: 1334.w,
                            height: 134.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [


                                //icon back
                                Container(
                                  height: 128.h,
                                  width: 128.w,
                                  padding: EdgeInsets.only(left: 44.w,top: 32.h,right: 43.9.w,bottom: 31.h),
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

                                SizedBox(width: 724.w,),

                                //icon share
                                Container(
                                  height: 128.h,
                                  width: 128.w,
                                  padding: EdgeInsets.only(left: 34.5.w,top: 31.5.h,right: 35.w,bottom: 31.5.h),
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
                                    image: AssetImage('assets/images1/Icon feather-share-2.png'),
                                    width: 58.5.w,
                                    height: 65.h,
                                  ),
                                ),

                                SizedBox(width: 49.w,),

                                //icon shop cart
                                Container(
                                  height: 128.h,
                                  width: 128.w,
                                  padding: EdgeInsets.only(left: 29.2.w,top: 32.h,right: 30.w,bottom: 31.h),
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
                                    image: AssetImage('assets/images1/Group 5075.png'),
                                    width: 68.8.w,
                                    height: 65.h,
                                  ),
                                ),

                                SizedBox(width: 49.w,),

                                //icon favourite
                                Container(
                                  height: 128.h,
                                  width: 128.w,
                                  padding: EdgeInsets.only(left: 28.9.w,top: 31.2.h,right: 27.8.w,bottom: 30.8.h),
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
                                    image: AssetImage('assets/images1/Icon material-favorite-border.png'),
                                    width: 71.26.w,
                                    height: 65.h,
                                  ),
                                ),


                              ],
                            ),


                          ),

                          //dot green
                          Container(
                            margin: EdgeInsets.only(left: 1090.w,top: 1296.h,bottom: 41.h, right:294.w),
                            height: 56.h,
                            width: 56.w,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: Color(0xff29772F),
                                    width: 2.w
                                )
                            ),
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

                          //-----  1/6
                          Container(
                            padding: EdgeInsets.only(left: 48.w,top: 3.h,bottom: 5.h),
                            margin: EdgeInsets.only(left: 1195.w,top: 1287.h,bottom: 34.h, right:75.w),
                            height: 72.h,
                            width: 170.w,
                            decoration: BoxDecoration(
                              color: ColorsSys.backgroundColor,
                              borderRadius: BorderRadius.circular(29.r),
                            ),
                            child: Text(
                              '1/6',
                              style: TextStyle(
                                color: Color(0xffFC6A57),
                                fontFamily: 'OpenSans_Semibold',
                                fontSize: 48.sp,
                              ),
                            ),
                          ),


                        ],
                      ),
                    ),

                    SizedBox(height: 76.h,),


                    // 2 3 4
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 53.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          //2
                          Container(
                            width: 1334.w,
                            height: 370.h,
                            child: Text(
                              'Top-class Lenovo Elite Busineess Laptop\n'
                                  'ThinkPad X1 Yoga 2020 i7-10510U 16GB Ram\n'
                                  '1TB SSD 4K Touch Screen 360 Flip Pen Quality',
                              style: TextStyle(
                                fontSize: 62.4.sp,
                                fontFamily: 'OpenSans_Regular',
                                color: Color(0xff52575C),
                              ),
                            ),
                          ),

                          SizedBox(height: 35.h,),

                          //3 Start
                          Container(
                            width: 668.6.w,
                            height: 68.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [

                                Container(
                                  width: 49.62.w,
                                  height: 47.31.h,
                                  child: Image(
                                    image: AssetImage('assets/images1/Group 5077.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),

                                SizedBox(width: 10.w,),

                                Container(
                                  width: 49.62.w,
                                  height: 47.31.h,
                                  child: Image(
                                    image: AssetImage('assets/images1/Group 5077.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),

                                SizedBox(width: 10.w,),

                                Container(
                                  width: 49.62.w,
                                  height: 47.31.h,
                                  child: Image(
                                    image: AssetImage('assets/images1/Group 5077.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),

                                SizedBox(width: 10.w,),

                                Container(
                                  width: 49.62.w,
                                  height: 47.31.h,
                                  child: Image(
                                    image: AssetImage('assets/images1/Group 5077.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),

                                SizedBox(width: 10.w,),

                                Container(
                                  width: 49.62.w,
                                  height: 47.31.h,
                                  child: Image(
                                    image: AssetImage('assets/images1/Group 54.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),

                                SizedBox(width: 20.5.w,),

                                Container(
                                  width: 360.w,
                                  height: 68.h,
                                  child: Text('4.5|216 orders',style: TextStyle(
                                    color: Color(0xff767676),
                                    fontFamily: 'OpenSans_Regular',
                                    fontSize: 51.sp,
                                  ),),
                                ),

                              ],
                            ),
                          ),

                          SizedBox(height: 35.h,),


                          //4 Rs. 1,896.48
                          Container(
                            width: 506.w,
                            height: 227.h,
                            child:
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Container(
                                  width: 494.w,
                                  height: 125.h,
                                  child: Text('Rs. 1,896.48',style: TextStyle(
                                    color: ColorsSys.titleTextColor,
                                    fontSize: 87.sp,
                                    fontFamily: 'OpenSans_Semibold',
                                  ),),
                                ),

                                SizedBox(height: 30.h,),

                                Container(
                                  height: 72.h,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [

                                      Stack(
                                        children: [
                                          Text('Rs. 3,059.01',
                                            style: TextStyle(
                                                decoration: TextDecoration.lineThrough,
                                                fontSize: 54.sp,
                                                color: Color(0xff999999),
                                                fontFamily:'OpenSans_Regular'
                                            ),),
                                        ],
                                      ),

                                      SizedBox(width: 40.w,),

                                      Container(
                                        height: 60.h,
                                        width: 4.w,
                                        decoration: BoxDecoration(
                                          color: Color(0xffFE7E7B),
                                        ),
                                      ),

                                      SizedBox(width: 50.w,),

                                      Text('-38%',
                                        style: TextStyle(
                                            fontSize: 46.sp,
                                            color: Color(0xffFE7E7B),
                                            fontFamily:'OpenSans_Regular'
                                        ),),

                                    ],
                                  ),
                                )

                              ],
                            ),
                          ),

                        ],
                      ),
                    ),

                    SizedBox(height: 77.h,),

                    Divider(
                    ),

                    SizedBox(height: 87.h,),

                    //5
                    Container(
                      width: 1334.w,
                      height: 380.h,
                      margin: EdgeInsets.symmetric(horizontal: 53.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          //4colors - 6Size -- next
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              //4colors - 6Size
                              Container(
                                width: 212.w,
                                height: 69.h,
                                child: Text(
                                  "4 colors,",
                                  style: TextStyle(
                                    color: Color(0xff52575C),
                                    fontFamily: 'OpenSans_Semibold',
                                    fontSize: 52.sp,
                                  ),
                                ),
                              ),

                              SizedBox(width: 30.w,),

                              Container(
                                width: 145.w,
                                height: 69.h,
                                child: Text(
                                  "6 size",
                                  style: TextStyle(
                                    color: Color(0xff52575C),
                                    fontFamily: 'OpenSans_Semibold',
                                    fontSize: 52.sp,
                                  ),
                                ),
                              ),

                              SizedBox(width: 925.w,),

                              InkWell(
                                onTap: (){
                                },
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: (108-87).h),
                                  width: 20.w,
                                  height: 35.h,
                                  child: Image(
                                    image: AssetImage('assets/images1/Path 5868.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 56.h,),

                          // áo khoác --- coat
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                //C1
                                Container(
                                  width: 245.w,
                                  height: 245.h,
                                  decoration: BoxDecoration(
                                      color:  ColorsSys.backgroundColor,
                                      borderRadius: BorderRadius.circular(30.r)
                                  ),
                                  child: Image(
                                    image: AssetImage('assets/images1/3.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),

                                SizedBox(width: 50.w,),

                                //C2
                                Container(
                                  width: 245.w,
                                  height: 245.h,
                                  decoration: BoxDecoration(
                                      color:  ColorsSys.backgroundColor,
                                      borderRadius: BorderRadius.circular(30.r)
                                  ),
                                  child: Image(
                                    image: AssetImage('assets/images1/4.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),

                                SizedBox(width: 50.w,),

                                //C3
                                Container(
                                  width: 245.w,
                                  height: 245.h,
                                  decoration: BoxDecoration(
                                      color:  ColorsSys.backgroundColor,
                                      borderRadius: BorderRadius.circular(30.r)
                                  ),
                                  child: Image(
                                    image: AssetImage('assets/images1/2.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),

                                SizedBox(width: 50.w,),

                                //C4
                                Container(
                                  width: 245.w,
                                  height: 245.h,
                                  decoration: BoxDecoration(
                                      color:  ColorsSys.backgroundColor,
                                      borderRadius: BorderRadius.circular(30.r)
                                  ),
                                  child: Image(
                                    image: AssetImage('assets/images1/1.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),

                              ],
                            ),
                          ),

                        ],
                      ),
                    ),

                    SizedBox(height: 75.h,),


                    Divider(),

                    SizedBox(height: 87.h,),

                    //Specifications
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 53.w),
                      height: 69.h,
                      width: 1334.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          Text('Specifications',
                            style: TextStyle(
                                color: Color(0xff52575C),
                                fontSize: 52.sp,
                                fontFamily: 'OpenSans_Semibold'
                            ),),

                          SizedBox(width: 956.w,),

                          Image(image: AssetImage('assets/images1/Path 5868.png'),
                            width: 30.w,
                            height: 35.h,),
                        ],
                      ),
                    ),

                    SizedBox(height: 56.h,),

                    Divider(),

                    SizedBox(height: 87.h,),

                    //Discounts & Coupons
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 53.w),
                      height: 69.h,
                      width: 1334.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          Text('Discounts & Coupons',
                            style: TextStyle(
                                color: Color(0xff52575C),
                                fontSize: 52.sp,
                                fontFamily: 'OpenSans_Semibold'
                            ),),

                          SizedBox(width: 768.w,),

                          Image(image: AssetImage('assets/images1/Path 5868.png'),
                            width: 30.w,
                            height: 35.h,),
                        ],
                      ),
                    ),

                    SizedBox(height: 33.h,),

                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 53.w),
                      padding: EdgeInsets.only(left: 26.w,top: 8.h,bottom: 9.h),
                      height: 73.h,
                      width: 535.w,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images1/Subtraction 2.png')
                          )
                      ),
                      child: Text(
                        'Rs. 150 off for new users',
                        style: TextStyle(
                          fontFamily: 'OpenSans_Regular',
                          fontSize: 42.sp,
                          color: Colors.white,
                        ),
                      ),
                    ),

                    SizedBox(height: 48.h,),
                  ],
                ),
              ),

              Container(
                height: 32.h,
                decoration: BoxDecoration(
                  color: ColorsSys.backgroundColor
                ),
              ),


              //Customer review (52)
              Container(
                width: 1440.w,
                  height: 1235.h,
                padding: EdgeInsets.only(top: 53.h),
                margin: EdgeInsets.symmetric(horizontal:53.w ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    //Customer review (52) 4.5/5 --- start - next
                    Container(
                      width: 1334.w,
                      height: 69.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text('Customer reviews (52)',
                          style: TextStyle(
                            color: Color(0xff52575C),
                            fontSize: 52.sp,
                            fontFamily: 'OpenSans_Semibold'
                          )),

                          SizedBox(width: 276.4.w,),

                          Container(
                            height: 70.h,
                            child: Row(
                              children: [

                                Text('4.5/5',
                                style: TextStyle(
                                  color: Color(0xff767676),
                                  fontFamily: 'OpenSans_Regular',
                                  fontSize: 51.sp,
                                  letterSpacing: 1.01
                                ),),

                                SizedBox(width: 9.5.w,),

                                // 4.5/5 Star
                                Container(
                                  width: 49.62.w,
                                  height: 47.31.h,
                                  child: Image(
                                    image: AssetImage('assets/images1/Group 5077.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),

                                SizedBox(width: 10.w,),

                                Container(
                                  width: 49.62.w,
                                  height: 47.31.h,
                                  child: Image(
                                    image: AssetImage('assets/images1/Group 5077.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),

                                SizedBox(width: 10.w,),

                                Container(
                                  width: 49.62.w,
                                  height: 47.31.h,
                                  child: Image(
                                    image: AssetImage('assets/images1/Group 5077.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),

                                SizedBox(width: 10.w,),

                                Container(
                                  width: 49.62.w,
                                  height: 47.31.h,
                                  child: Image(
                                    image: AssetImage('assets/images1/Group 5077.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),

                                SizedBox(width: 10.w,),

                                Container(
                                  width: 49.62.w,
                                  height: 47.31.h,
                                  child: Image(
                                    image: AssetImage('assets/images1/Group 54.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),

                                SizedBox(width: 30.w,),

                                Image(image: AssetImage('assets/images1/Path 5868.png'),
                                  width: 30.w,
                                  height: 35.h,)


                                //next



                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 36.h,),


                    // 5 coats and 1 container [...]
                    Container(
                      width: 1334.w,
                      height: 200.h,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          //Coat 1
                          Container(
                            width: 200.w,
                            height: 200.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.r),
                            ),
                            child: Image(
                              image: AssetImage('assets/images1/3cus.png'),
                              fit: BoxFit.fill,
                            ),
                          ),

                          SizedBox(width: 40.w,),

                          //Coat 2
                          Container(
                            width: 200.w,
                            height: 200.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.r),
                            ),
                            child: Image(
                              image: AssetImage('assets/images1/4cus.png'),
                              fit: BoxFit.fill,
                            ),
                          ),

                          SizedBox(width: 40.w,),

                          //Coat 3
                          Container(
                            width: 200.w,
                            height: 200.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.r),
                            ),
                            child: Image(
                              image: AssetImage('assets/images1/2cus.png'),
                              fit: BoxFit.fill,
                            ),
                          ),

                          SizedBox(width: 40.w,),

                          //Coat 4
                          Container(
                            width: 200.w,
                            height: 200.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.r),
                            ),
                            child: Image(
                              image: AssetImage('assets/images1/1cus.png'),
                              fit: BoxFit.fill,
                            ),
                          ),

                          SizedBox(width: 40.w,),

                          //Coat 5
                          Container(
                            width: 200.w,
                            height: 200.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.r),
                            ),
                            child: Image(
                              image: AssetImage('assets/images1/5cus.png'),
                              fit: BoxFit.fill,
                            ),
                          ),

                          SizedBox(width: 40.w,),

                          // ...
                          Container(
                            height: 200.h,
                            width: 134.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.r),
                              color: Colors.white,
                              border: Border.all(
                                  color: Color(0xff999999),
                              width: 3.w)
                            ),

                            child: Center(
                              child: Image(
                                image: AssetImage('assets/images1/Icon ionic-ios-more.png'),
                                height: 9.37.h,
                                width: 47.37.w,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 44.5.h,),

                    Divider(),

                    SizedBox(height: 31.5.h,),

                    //Artem Buryak --- 07 Oct 2020
                    Container(
                      width: 1334.w,
                      height: 62.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          //Text
                          Text('Artem Buryak',style: TextStyle(
                            color: Color(0xff52575C),
                            fontSize: 46.sp,
                            fontFamily: 'OpenSans_Semibold'
                          ),),

                          SizedBox(width: 766.w,),

                          Text('07 Oct 2020',style: TextStyle(
                              color: Color(0xff999999),
                              fontSize: 46.sp,
                              fontFamily: 'OpenSans_Semibold'
                          ),),

                        ],
                      ),
                    ),

                    SizedBox(height: 31.1.h,),

                    // 4.5/5 Star
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // 4.5/5 Star
                          Container(
                            width: 49.62.w,
                            height: 47.31.h,
                            child: Image(
                              image: AssetImage('assets/images1/Group 5077.png'),
                              fit: BoxFit.fill,
                            ),
                          ),

                          SizedBox(width: 10.w,),

                          Container(
                            width: 49.62.w,
                            height: 47.31.h,
                            child: Image(
                              image: AssetImage('assets/images1/Group 5077.png'),
                              fit: BoxFit.fill,
                            ),
                          ),

                          SizedBox(width: 10.w,),

                          Container(
                            width: 49.62.w,
                            height: 47.31.h,
                            child: Image(
                              image: AssetImage('assets/images1/Group 5077.png'),
                              fit: BoxFit.fill,
                            ),
                          ),

                          SizedBox(width: 10.w,),

                          Container(
                            width: 49.62.w,
                            height: 47.31.h,
                            child: Image(
                              image: AssetImage('assets/images1/Group 5077.png'),
                              fit: BoxFit.fill,
                            ),
                          ),

                          SizedBox(width: 10.w,),

                          Container(
                            width: 49.62.w,
                            height: 47.31.h,
                            child: Image(
                              image: AssetImage('assets/images1/Group 54.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 32.6.h,),

                    // Thank you very much for tennis, I was really satisfied with him.
                    Container(
                      width: 1334.w,
                      height: 117.h,
                      child: Text(
                        'Thank you very much for tennis, I was really satisfied with him.',
                        style: TextStyle(
                          color: Color(0xff52575C),
                          fontFamily: 'OpenSans_Regular',
                          fontSize: 46.sp,
                        ),
                      ),
                    ),

                    SizedBox(height: 25.h,),

                    //Brave Wings --- 16 Sep 2020
                    Container(
                      width: 1334.w,
                      height: 62.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          //Text
                          Text('Brave Wings',style: TextStyle(
                              color: Color(0xff52575C),
                              fontSize: 46.sp,
                              fontFamily: 'OpenSans_Semibold'
                          ),),

                          SizedBox(width: 766.w,),

                          Text('16 Sep 2020',style: TextStyle(
                              color: Color(0xff999999),
                              fontSize: 46.sp,
                              fontFamily: 'OpenSans_Semibold'
                          ),),

                        ],
                      ),
                    ),

                    SizedBox(height: 31.1.h,),

                    // 5/5 Star
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // 4.5/5 Star
                          Container(
                            width: 49.62.w,
                            height: 47.31.h,
                            child: Image(
                              image: AssetImage('assets/images1/Group 5077.png'),
                              fit: BoxFit.fill,
                            ),
                          ),

                          SizedBox(width: 10.w,),

                          Container(
                            width: 49.62.w,
                            height: 47.31.h,
                            child: Image(
                              image: AssetImage('assets/images1/Group 5077.png'),
                              fit: BoxFit.fill,
                            ),
                          ),

                          SizedBox(width: 10.w,),

                          Container(
                            width: 49.62.w,
                            height: 47.31.h,
                            child: Image(
                              image: AssetImage('assets/images1/Group 5077.png'),
                              fit: BoxFit.fill,
                            ),
                          ),

                          SizedBox(width: 10.w,),

                          Container(
                            width: 49.62.w,
                            height: 47.31.h,
                            child: Image(
                              image: AssetImage('assets/images1/Group 5077.png'),
                              fit: BoxFit.fill,
                            ),
                          ),

                          SizedBox(width: 10.w,),

                          Container(
                            width: 49.62.w,
                            height: 47.31.h,
                            child: Image(
                              image: AssetImage('assets/images1/Group 5077.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 32.6.h,),

                    // Thank you very much for tennis, I was really satisfied with him.
                    Container(
                      width: 1334.w,
                      height: 117.h,
                      child: Text(
                        'Thank you very much for tennis, I was really satisfied with him.',
                        style: TextStyle(
                          color: Color(0xff52575C),
                          fontFamily: 'OpenSans_Regular',
                          fontSize: 46.sp,
                        ),
                      ),
                    ),

                    SizedBox(height: 25.h,),

                    //View All
                    Container(
                      //width: 165.w,
                      height:62.h,
                      child: Text(
                        'View All',
                        style: TextStyle(
                          fontSize: 46.sp,
                          fontFamily: 'OpenSans_Regular',
                          color: Color(0xffFE7E7B),
                        ),
                      ),
                    ),

                    SizedBox(height: 44.h,),

                  ],
                ),

              ),


              Container(
                height: 32.h,
                decoration: BoxDecoration(
                    color: ColorsSys.backgroundColor
                ),
              ),


              //Products related to this item
              Container(
                margin: EdgeInsets.symmetric(horizontal: 53.w),
                padding: EdgeInsets.only(top: 53.w),
                width: 1440.w,
                height: 740.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    //text
                    Container(
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                       // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text('Products related to this item',
                          style: TextStyle(
                            color: Color(0xff52575C),
                            fontFamily: 'OpenSans_Semibold',
                            fontSize: 52.sp
                          ),),

                          SizedBox(width: 292.5.w,),

                          Text('All Products',
                              style: TextStyle(
                                  color: Color(0xff999999),
                                  fontFamily: 'OpenSans_Semibold',
                                  fontSize: 46.sp
                              )),

                          SizedBox(width: 30.w,),

                          Image(image: AssetImage('assets/images1/Path 5877.png'),
                          width: 23.w,
                            height: 35.h,
                          )
                        ],
                      ),
                    ),

                    SizedBox(height: 59.h,),

                    Container(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Coat 1
                            Container(
                              width: 404.w,
                              height: 512.h,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [

                                  Image(image: AssetImage('assets/images1/3products.png'),
                                    width: 404.w,
                                    height: 403.h,
                                  ),

                                  SizedBox(height: 45.h,),

                                  Text('Rs. 21,999.00',
                                    style: TextStyle(
                                      fontSize: 46.sp,
                                      fontFamily: 'OpenSans_Semibold',
                                      color: Color(0xff999999),
                                    ),),
                                ],
                              ),
                            ),

                            SizedBox(width: 30.w,),

                            // Coat 2
                            Container(
                              width: 404.w,
                              height: 512.h,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [

                                  Image(image: AssetImage('assets/images1/3products.png'),
                                    width: 404.w,
                                    height: 403.h,
                                  ),

                                  SizedBox(height: 45.h,),

                                  Text('Rs. 18,799.00',
                                    style: TextStyle(
                                      fontSize: 46.sp,
                                      fontFamily: 'OpenSans_Semibold',
                                      color: Color(0xff999999),
                                    ),),
                                ],
                              ),
                            ),

                            SizedBox(width: 30.w,),

                            // Coat 3
                            Container(
                              width: 404.w,
                              height: 512.h,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [

                                  Image(image: AssetImage('assets/images1/3products.png'),
                                    width: 404.w,
                                    height: 403.h,
                                  ),

                                  SizedBox(height: 45.h,),

                                  Text('Rs. 22,500.00',
                                    style: TextStyle(
                                      fontSize: 46.sp,
                                      fontFamily: 'OpenSans_Semibold',
                                      color: Color(0xff999999),
                                    ),),
                                ],
                              ),
                            ),

                            SizedBox(width: 30.w,),

                            // Coat 4
                            Container(
                              width: 404.w,
                              height: 512.h,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [

                                  Image(image: AssetImage('assets/images1/3products.png'),
                                    width: 404.w,
                                    height: 403.h,
                                  ),

                                  SizedBox(height: 45.h,),

                                  Text('Rs. 22,500.00',
                                    style: TextStyle(
                                      fontSize: 46.sp,
                                      fontFamily: 'OpenSans_Semibold',
                                      color: Color(0xff999999),
                                    ),),
                                ],
                              ),
                            ),

                            SizedBox(width: 30.w,),

                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),


              //More Products
              Container(
                width: 1334.w,
                height: 2006.h,
                margin: EdgeInsets.symmetric(horizontal: 53.w),
                decoration: BoxDecoration(
                  color: ColorsSys.backgroundColor,
                ),
                child: Column(
                  children: [

                    Container(
                      width: 1334.w,
                      height: 82.h ,
                      decoration: BoxDecoration(
                        color: ColorsSys.backgroundColor ,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('More Products',
                            style: TextStyle(
                              fontSize: 60.sp,
                              fontFamily: 'OpenSans_Semibold',
                              color: ColorsSys.titleTextColor,

                            ),),
                          Padding(
                            padding:  EdgeInsets.only(left: 768.w,top: 25.h),
                            child: Text('See all',
                              style: TextStyle(
                                color: Color(0xffFC6A57),
                                fontFamily: 'OpenSans_Semibold',
                                fontSize: 42.sp,
                              ),),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 40.h,),

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
                                  borderRadius:BorderRadius.circular(30.r),
                                  color: Colors.white
                              ),
                              child: Stack(
                                children: [

                                  Image(image: AssetImage('assets/images/NoPath - Copy (7).png')),


                                  // Diwali Sale
                                  Container(
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
                                        )
                                    ),
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
                                    margin: EdgeInsets.only(top: 681.h,bottom: 30.h,left: 24.w,right: 25.w),
                                    height: 211.h,
                                    width: 608.w,
                                    decoration: BoxDecoration(
                                        color: Colors.white
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        Text('Photo Printer Color HP Plus S...',
                                          style: TextStyle(
                                              color: Color(0xff52575C),
                                              fontSize: 39.sp,
                                              fontFamily:'OpenSans_Regular'
                                          ),),

                                        SizedBox(height: 9.h,),

                                        Text('Rs. 1,896.48',
                                          style: TextStyle(
                                              color: ColorsSys.titleTextColor,
                                              fontSize: 57.8.sp,
                                              fontFamily:'OpenSans_Semibold'
                                          ),),

                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [

                                            Stack(
                                              children: [
                                                Text('Rs. 3,059.01',
                                                  style: TextStyle(
                                                    decoration: TextDecoration.lineThrough,
                                                      fontSize: 42.sp,
                                                      color: Color(0xff999999),
                                                      fontFamily:'OpenSans_Regular'
                                                  ),),
                                              ],
                                            ),

                                            SizedBox(width: 20.w,),

                                            Container(
                                              height: 41.45.h,
                                              width: 4.w,
                                              decoration: BoxDecoration(
                                                color: Color(0xffFE7E7B),
                                              ),
                                            ),

                                            SizedBox(width: 20.w,),

                                            Text('-38%',
                                              style: TextStyle(
                                                  fontSize: 36.sp,
                                                  color: Color(0xffFE7E7B),
                                                  fontFamily:'OpenSans_Regular'
                                              ),),



                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),


                            SizedBox(width: 20.w,),

                            //Number 2
                            Container(
                              height: 922.h,
                              width: 657.h,
                              decoration: BoxDecoration(
                                  borderRadius:BorderRadius.circular(30.r),
                                  color: Colors.white
                              ),
                              child: Stack(
                                children: [

                                  Image(image: AssetImage('assets/images/NoPath - Copy (8).png')),

                                  //Diwali Sale
                                  Container(
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
                                        )
                                    ),
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
                                    margin: EdgeInsets.only(top: 681.h,bottom: 30.h,left: 24.w,right: 25.w),
                                    height: 211.h,
                                    width: 608.w,
                                    decoration: BoxDecoration(
                                        color: Colors.white
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        Text('Photo Printer Color HP Plus S...',
                                          style: TextStyle(
                                              color: Color(0xff52575C),
                                              fontSize: 39.sp,
                                              fontFamily:'OpenSans_Regular'
                                          ),),

                                        SizedBox(height: 9.h,),

                                        Text('Rs. 1,896.48',
                                          style: TextStyle(
                                              color: ColorsSys.titleTextColor,
                                              fontSize: 57.8.sp,
                                              fontFamily:'OpenSans_Semibold'
                                          ),),

                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [

                                            Stack(
                                              children: [
                                                Text('Rs. 3,059.01',
                                                  style: TextStyle(
                                                    decoration: TextDecoration.lineThrough,
                                                      fontSize: 42.sp,
                                                      color: Color(0xff999999),
                                                      fontFamily:'OpenSans_Regular'
                                                  ),),
                                              ],
                                            ),

                                            SizedBox(width: 20.w,),

                                            Container(
                                              height: 41.45.h,
                                              width: 4.w,
                                              decoration: BoxDecoration(
                                                color: Color(0xffFE7E7B),
                                              ),
                                            ),

                                            SizedBox(width: 20.w,),

                                            Text('-38%',
                                              style: TextStyle(
                                                  fontSize: 36.sp,
                                                  color: Color(0xffFE7E7B),
                                                  fontFamily:'OpenSans_Regular'
                                              ),),



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


                        SizedBox(height: 40.h,),


                        Row(
                          children: [

                            //Number 3
                            Container(
                              height: 922.h,
                              width: 657.h,
                              decoration: BoxDecoration(
                                  borderRadius:BorderRadius.circular(30.r),
                                  color: Colors.white
                              ),
                              child: Stack(
                                children: [

                                  Image(image: AssetImage('assets/images/NoPath - Copy (9).png')),

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
                                    margin: EdgeInsets.only(top: 681.h,bottom: 30.h,left: 24.w,right: 25.w),
                                    height: 211.h,
                                    width: 608.w,
                                    decoration: BoxDecoration(
                                        color: Colors.white
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        Text('Photo Printer Color HP Plus S...',
                                          style: TextStyle(
                                              color: Color(0xff52575C),
                                              fontSize: 39.sp,
                                              fontFamily:'OpenSans_Regular'
                                          ),),

                                        SizedBox(height: 9.h,),

                                        Text('Rs. 1,896.48',
                                          style: TextStyle(
                                              color: ColorsSys.titleTextColor,
                                              fontSize: 57.8.sp,
                                              fontFamily:'OpenSans_Semibold'
                                          ),),

                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [

                                            Stack(
                                              children: [
                                                Text('Rs. 3,059.01',
                                                  style: TextStyle(
                                                    decoration: TextDecoration.lineThrough,
                                                      fontSize: 42.sp,
                                                      color: Color(0xff999999),
                                                      fontFamily:'OpenSans_Regular'
                                                  ),),
                                              ],
                                            ),

                                            SizedBox(width: 20.w,),

                                            Container(
                                              height: 41.45.h,
                                              width: 4.w,
                                              decoration: BoxDecoration(
                                                color: Color(0xffFE7E7B),
                                              ),
                                            ),

                                            SizedBox(width: 20.w,),

                                            Text('-38%',
                                              style: TextStyle(
                                                  fontSize: 36.sp,
                                                  color: Color(0xffFE7E7B),
                                                  fontFamily:'OpenSans_Regular'
                                              ),),



                                          ],
                                        ),
                                      ],
                                    ),
                                  ),

                                  //  Green Circle
                                 /* Container(
                                    margin: EdgeInsets.only(left: 581.w,top: 572.h,bottom: 294.h, right:20 .w),
                                    height: 56.h,
                                    width: 56.w,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                            color: Color(0xff29772F),
                                            width: 2.w
                                        )
                                    ),
                                    child: Container(
                                      height: 36.h,
                                      width: 36.w,
                                      margin: EdgeInsets.all(10.sp),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xff29772F),

                                      ),
                                    ),
                                  ),*/
                                ],
                              ),
                            ),

                            SizedBox(width: 20.w,),

                            // number 4
                            Container(
                              height: 922.h,
                              width: 657.h,
                              decoration: BoxDecoration(
                                  borderRadius:BorderRadius.circular(30.r),
                                  color: Colors.white
                              ),
                              child: Stack(
                                children: [

                                  Image(image: AssetImage('assets/images/NoPath - Copy (10).png')),

                                  // Diwali Sale
                                  Container(
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
                                        )
                                    ),
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
                                    margin: EdgeInsets.only(top: 681.h,bottom: 30.h,left: 24.w,right: 25.w),
                                    height: 211.h,
                                    width: 608.w,
                                    decoration: BoxDecoration(
                                        color: Colors.white
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        Text('Photo Printer Color HP Plus S...',
                                          style: TextStyle(
                                              color: Color(0xff52575C),
                                              fontSize: 39.sp,
                                              fontFamily:'OpenSans_Regular'
                                          ),),

                                        SizedBox(height: 9.h,),

                                        Text('Rs. 1,896.48',
                                          style: TextStyle(
                                              color: ColorsSys.titleTextColor,
                                              fontSize: 59.sp,
                                              fontFamily:'OpenSans_Semibold'
                                          ),),

                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [

                                            Stack(
                                              children: [
                                                Text('Rs. 3,059.01',
                                                  style: TextStyle(
                                                    decoration: TextDecoration.lineThrough,
                                                      fontSize: 37.8.sp,
                                                      color: Color(0xff999999),
                                                      fontFamily:'OpenSans_Regular'
                                                  ),)
                                              ],
                                            ),

                                            SizedBox(width: 20.w,),

                                            Container(
                                              height: 41.45.h,
                                              width: 4.w,
                                              decoration: BoxDecoration(
                                                color: Color(0xffFE7E7B),
                                              ),
                                            ),

                                            SizedBox(width: 20.w,),

                                            Text('-38%',
                                              style: TextStyle(
                                                  fontSize: 36.sp,
                                                  color: Color(0xffFE7E7B),
                                                  fontFamily:'OpenSans_Regular'
                                              ),),



                                          ],
                                        ),
                                      ],
                                    ),
                                  ),


                                  //  Red Circle
                                  /*Container(
                                    margin: EdgeInsets.only(left: 581.w,top: 572.h,bottom: 294.h, right:20 .w),
                                    height: 56.h,
                                    width: 56.w,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                            color: Color(0xffB40000),
                                            width: 2.w
                                        )
                                    ),
                                    child: Container(
                                      height: 36.h,
                                      width: 36.w,
                                      margin: EdgeInsets.all(10.sp),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xffB40000),

                                      ),
                                    ),
                                  ),*/
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

              SizedBox(height: 61.h,),

            ],
          ),
        ),
      ),
    );
  }
}
