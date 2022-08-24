import 'package:eshop_app/colorsSys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpCart17Test extends StatefulWidget {
  const SpCart17Test({Key? key}) : super(key: key);

  @override
  State<SpCart17Test> createState() => _SpCart17TestState();
}

class _SpCart17TestState extends State<SpCart17Test> {
  int _itemCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsSys.backgroundColor,
      body: SafeArea(
        child:
        Container(
          width: 1334.w,
          height: 421.h,
          margin: EdgeInsets.symmetric(horizontal: 53.w),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.r), color: Colors.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  //image
                  Container(
                    margin: EdgeInsets.only(left: 40.w, top: 40.h),
                    width: 232.w,
                    height: 232.h,
                    child: Image(
                      image: AssetImage('assets/shoppingcart17screen/9455.png'),
                      fit: BoxFit.fill,
                    ),
                  ),

                  //content
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      //content1
                      Container(
                        width: 823.w,
                        height: 148.h,
                        margin: EdgeInsets.only(top: 40.h, left: 57.w),
                        decoration: BoxDecoration(color: Colors.white),
                        child: Text(
                          'CORSAIR Memoria Module RAN 8GB 4000MHz RGB PRO DIM sdfsdfsdffgdfgdfg',
                          maxLines: 2,
                          style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              color: Color(0xff52575C),
                              fontSize: 54.sp,
                              fontFamily: 'OpenSans_Regular'),
                        ),
                      ),

                      //content2
                      Container(
                        margin: EdgeInsets.only(top: 10.h, left: 57.w),
                        height: 80.h,
                        decoration: BoxDecoration(color: Colors.white),
                        child: Text(
                          'Rs. 1,000.00',
                          style: TextStyle(
                              color: ColorsSys.titleTextColor,
                              fontSize: 59.sp,
                              fontFamily: 'OpenSans_Semibold'),
                        ),
                      ),

                    ],
                  ),

                   //Delete
                    Container(
                      margin: EdgeInsets.only(left: 92.5.w, top: 41.7.h),
                      width: 31.4.w,
                      height: 32.42.h,
                      child: Image(
                        image: AssetImage(
                            'assets/shoppingcart17screen/Group 5130.png'),
                        fit: BoxFit.fill,
                      ),
                    ),

                ],
              ),

              SizedBox(height: 33.h,),

              // -- ++  Save for late
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // -- ++
                  Container(
                    margin: EdgeInsets.only(left: 329.w),
                    child: Row(
                      children: [
                        //_itemCount!=0?
                        // IconButton(icon: Icon(Icons.remove),
                        //   onPressed: ()=>setState(()=>_itemCount--),),

                        //--
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _itemCount--;
                              if (_itemCount == 0) {
                                return;
                              }
                            });
                          },
                          child: Container(
                            width: 64.w,
                            height: 62.h,
                            margin: EdgeInsets.only(right: 28.w),
                            padding: EdgeInsets.only(
                                left: 21.3.w,
                                top: 28.9.h,
                                right: 20.6.w,
                                bottom: 29.8.h),
                            decoration: BoxDecoration(
                              color: ColorsSys.backgroundColor,
                              borderRadius: BorderRadius.circular(14.r),
                            ),
                            child: Center(
                              child: Image(
                                image: AssetImage(
                                    'assets/shoppingcart17screen/Path 5902.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        //  :
                        //new Container(),

                        //text
                        Container(
                            width: 155.w,
                            height: 74.h,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                border: Border.all(width: 1.sp),
                                borderRadius:
                                BorderRadius.circular(14.r)),
                            child: Center(
                              child: Text(
                                _itemCount.toString(),
                                style: TextStyle(
                                    color: ColorsSys.titleTextColor,
                                    fontSize: 52.sp,
                                    fontFamily: 'OpenSans_Regular'),
                              ),
                            )),

                        //++
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _itemCount++;
                            });
                          },
                          child: Container(
                            width: 64.w,
                            height: 62.h,
                            margin: EdgeInsets.only(left: 28.w),
                            padding: EdgeInsets.only(
                                left: 21.6.w,
                                top: 19.6.h,
                                right: 21.5.w,
                                bottom: 20.8.h),
                            decoration: BoxDecoration(
                              color: ColorsSys.backgroundColor,
                              borderRadius: BorderRadius.circular(14.r),
                            ),
                            child: Center(
                              child: Image(
                                image: AssetImage(
                                    'assets/shoppingcart17screen/Path 5901.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),

                        // IconButton(icon:Icon(Icons.add),
                        //    onPressed: ()=>setState(()=>_itemCount++))
                      ],
                    ),
                  ),

                  SizedBox(width: 80.w,),

                  //Save for late
                  Container(
                    decoration: BoxDecoration(
                        color: ColorsSys.backgroundColor,
                        borderRadius: BorderRadius.circular(14.r)),
                    // margin: EdgeInsets.only(left: 746.w, top: 306.h),
                    padding: EdgeInsets.only(left: 70.w, top: 15.h),
                    width: 329.w,
                    height: 74.h,
                    child: Text(
                      'Save for late',
                      style: TextStyle(
                          fontFamily: 'OpenSans_Regular',
                          fontSize: 31.sp,
                          color: Color(0xff7673FF)),
                    ),
                  ),


                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
