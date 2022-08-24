
import 'package:eshop_app/home_screen_light.dart';
import 'package:eshop_app/listview_shoppingcart_17.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'colorsSys.dart';
import 'counter_provider.dart';
import 'my_provide_controller.dart';

class ShoppingCartSCrenn17 extends StatefulWidget {
  const ShoppingCartSCrenn17({Key? key}) : super(key: key);

  @override
  State<ShoppingCartSCrenn17> createState() => _ShoppingCartSCrenn17State();
}

class _ShoppingCartSCrenn17State extends State<ShoppingCartSCrenn17> {

  @override
  Widget build(BuildContext context) {

    print('Provider Example App  dsdsd(${context.watch<Counter>().count})');


    MyProviderController counter = MyProviderController(0);

    return ScreenUtilInit(
        designSize: Size(1440,2560),
        builder: (context,child) =>
            Scaffold(
              backgroundColor: ColorsSys.backgroundColor,

              appBar: TopBar(),

              body: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Expanded(child: ListViewShoppingCart17()),

                  Container(
                    height: 243.h,
                    decoration: BoxDecoration(
                      color: Colors.white
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                         // price total
                          Container(
                            margin: EdgeInsets.only(left: 52.w,top: 55.h),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text('Rs. 12,055.50',style: TextStyle(
                                  color: ColorsSys.titleTextColor,
                                  fontFamily: 'OpenSans_Semibold',
                                  fontSize: 53.sp,
                                ),),


                                Text('${context.watch<Counter>().count}',style: TextStyle(
                                  color: Color(0xff52575C),
                                  fontFamily: 'OpenSans_Regular',
                                  fontSize: 45.sp,
                                ),),
                              ],
                            ),
                          ),

                        
                        //btn Checkout
                        Container(
                              height: 159.h,
                              width: 500.w,
                              margin: EdgeInsets.only(top: 42.h,left: 506.w),
                              decoration: BoxDecoration(
                                boxShadow: [BoxShadow(
                                  offset: Offset(0, 0),
                                  blurRadius: 15.r,
                                  color: Colors.black.withOpacity(0.4)
                                )],
                                gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [Color(0xffFFBD69),Color(0xffFF6363)]
                                ),
                                borderRadius: BorderRadius.circular(36.r)
                              ),
                              child: Center(
                                child: Text(
                                  'Checkout',
                                  style: TextStyle(
                                    fontSize: 65.sp,
                                    fontFamily: 'OpenSans_Regular',
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                      ],
                    ),
                  ),
                ],
              ),
        ));
  }
}

  class TopBar extends StatelessWidget implements PreferredSizeWidget{

  @override
  final Size preferredSize;

   TopBar({Key ?key
    }) : preferredSize = Size.fromHeight((235).h);

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
        ),
      );
    }
  }






