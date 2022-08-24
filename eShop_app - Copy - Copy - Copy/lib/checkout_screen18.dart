import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'colorsSys.dart';
import 'top_bar.dart';

class CheckOutScreen18 extends StatefulWidget {
  const CheckOutScreen18({Key? key}) : super(key: key);

  @override
  State<CheckOutScreen18> createState() => _CheckOutScreen18State();
}

class _CheckOutScreen18State extends State<CheckOutScreen18> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsSys.backgroundColor,

      appBar: TopBar(Title: 'Checkout',),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          SizedBox(height: 34.h,),

          //Add a new address
          Container(
            margin: EdgeInsets.symmetric(horizontal: 53.w),
            height: 172.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30.r)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  margin: EdgeInsets.only(top: 56.5.h,left: 74.8.w),
                  width: 42.11.w,
                    height: 60.15.h,
                    child: Image(image: AssetImage('assets/images_checkout_18/Icon material-location-on.png'),
                    fit: BoxFit.fill,)),

                SizedBox(width: 57.1.h,),

                Container(
                    margin: EdgeInsets.only(top: 57.h),
                  child: Text('Add a new address',style: TextStyle(
                    color: ColorsSys.titleTextColor,
                    fontFamily: 'OpenSans_Semibold',
                    fontSize: 48.sp
                  )),
                ),
              ],
            ),
          ),

          SizedBox(height: 34.h,),

          //Select Payment Method
          Container(
            margin: EdgeInsets.symmetric(horizontal: 53.w),
            height: 172.h,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.r)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                    margin: EdgeInsets.only(top: 56.h,left: 67.5.w),
                    width: 61.12.w,
                    height: 61.09.h,
                    child: Image(image: AssetImage('assets/images_checkout_18/Icon simple-cashapp.png'),
                      fit: BoxFit.fill,)),

                SizedBox(width: 57.1.h,),

                Container(
                  margin: EdgeInsets.only(top: 57.h),
                  child: Text('Select Payment Method',style: TextStyle(
                      color: ColorsSys.titleTextColor,
                      fontFamily: 'OpenSans_Semibold',
                      fontSize: 48.sp
                  )),
                ),
              ],
            ),
          ),

          SizedBox(height: 34.h,),
          
          ///
          Container(
            height: 732.h,
            margin: EdgeInsets.symmetric(horizontal: 53.w),
            padding: EdgeInsets.only(left: 53.w, right: 45.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.r),
              color: Colors.white
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                //Image title price --++
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    //Image
                    Container(
                      width: 232.w,
                      height: 232.h,
                      margin: EdgeInsets.only(top: 50.h),
                      child: Image(
                        image: AssetImage('assets/images_checkout_18/Rectangle 2629.png'),
                      ),

                    ),

                    //Title + Price
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        //Title CORSAIR
                        Container(
                          margin: EdgeInsets.only(left: 36.w,top: 46.h),
                          width: 967.w,
                          height: 148.h,
                          child: Text('CORSAIR Memoria Module RAM 8GB 4000MHz RGB PRO DIM dskjfhsjgdfsssssssssdfsdf',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(
                            color: Color(0xff52575C),
                            fontSize: 54.sp,
                            fontFamily: 'OpenSans_Regular',
                          )),
                        ),

                        //Price --Text++
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            //Price
                            Container(
                              margin: EdgeInsets.only(left: 36.w),
                              child: Text('Rs. 10,999.00',
                              style: TextStyle(
                                fontFamily: 'OpenSans_Semibold',
                                fontSize: 59.sp,
                                color: ColorsSys.titleTextColor
                              )),
                            ),

                            //SizedBox(width: 211.w,),



                            // -- text ++
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                // -- ++
                                Container(
                                  margin: EdgeInsets.only(left:211.w),
                                  child: Row(
                                    children: [

                                      // --
                                      GestureDetector(
                                        onTap: () {
                                          //context.read<Counter>().decrement();

                                          setState(() {

                                          });
                                        },
                                        child: Container(
                                          width: 64.w,
                                          height: 63.h,
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
                                              '2',
                                              style: TextStyle(
                                                  color: ColorsSys.titleTextColor,
                                                  fontSize: 53.sp,
                                                  fontFamily: 'OpenSans_Regular'),
                                            ),
                                          )),

                                      //++
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {

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



                              ],
                            ),

                          ],
                        ),

                      ],
                    ),

                  ],
                ),

                SizedBox(height: 23.h,),

                //Divider
                Container(
                  child: Divider(
                    thickness:1.h,
                    color: Color(0xff707070),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    //Title
                    Container(
                      width: 232.w,
                      height: 283.h,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          //Subtotal: Tax: Shipping fee: Total:
                          Text('Subtotal:',
                          style: TextStyle(
                            color: Color(0xff999999),
                            fontSize: 38.sp,
                            fontFamily: 'OpenSans_Regular'
                          )),

                          Text('Tax:',
                              style: TextStyle(
                                  color: Color(0xff999999),
                                  fontSize: 38.sp,
                                  fontFamily: 'OpenSans_Regular'
                              )),

                          Text('Shipping fee:',
                              style: TextStyle(
                                  color: Color(0xff999999),
                                  fontSize: 38.sp,
                                  fontFamily: 'OpenSans_Regular'
                              )),

                          Text('Total:',
                              style: TextStyle(
                                  color: Color(0xff52575C),
                                  fontSize: 38.sp,
                                  fontFamily: 'OpenSans_Semibold'
                              )),
                        ],
                      ),
                    ),

                    SizedBox(width: 293.w,),

                    //Price 1
                    Container(
                      width: 240.w,
                      height: 283.h,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          //
                          Text('Rs. 10,999.00',
                              style: TextStyle(
                                  color: Color(0xff999999),
                                  fontSize: 38.sp,
                                  fontFamily: 'OpenSans_Regular'
                              )),

                          Text('10%',
                              style: TextStyle(
                                  color: Color(0xff999999),
                                  fontSize: 38.sp,
                                  fontFamily: 'OpenSans_Regular'
                              )),

                          Text('_',
                              style: TextStyle(
                                  color: Color(0xff999999),
                                  fontSize: 38.sp,
                                  fontFamily: 'OpenSans_Regular'
                              )),
                          Text('',
                              style: TextStyle(
                                  color: Color(0xff999999),
                                  fontSize: 38.sp,
                                  fontFamily: 'OpenSans_Regular'
                              )),

                        ],
                      ),
                    ),

                    SizedBox(width: 235.w,),

                    //Price 2
                    Container(
                      width: 232.w,
                      height: 283.h,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          //Subtotal: Tax: Shipping fee: Total:
                          Text('Rs.21,998.00',
                              style: TextStyle(
                                  color: Color(0xff999999),
                                  fontSize: 38.sp,
                                  fontFamily: 'OpenSans_Regular'
                              )),

                          Text('Rs.49.00',
                              style: TextStyle(
                                  color: Color(0xff999999),
                                  fontSize: 38.sp,
                                  fontFamily: 'OpenSans_Regular'
                              )),

                          Text('Rs.499.00',
                              style: TextStyle(
                                  color: Color(0xff999999),
                                  fontSize: 38.sp,
                                  fontFamily: 'OpenSans_Regular'
                              )),

                          Text('Rs.22,546.00',
                              style: TextStyle(
                                  color: Color(0xff52575C),
                                  fontSize: 38.sp,
                                  fontFamily: 'OpenSans_Semibold'
                              )),
                        ],
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
  }
}

