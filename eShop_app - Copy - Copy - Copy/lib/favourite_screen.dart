import 'package:eshop_app/colorsSys.dart';
import 'package:eshop_app/home_screen_light.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'notifications_screen.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {

  List<CardFavourite> items = [

    CardFavourite(//1
        Image: 'assets/images2/Rectangle 2629.png',
        title: 'CORSAIR Memoria module RAN 8GB 4000MHZ RGB PRO DIM...',
        price: 'Rs. 1,896.48',
        Image4: 'assets/images2/Icon feather-more-horizontal.png'),

    CardFavourite(//2
        Image: 'assets/images2/Rectangle 2629_1.png',
        title: 'CORSAIR Memoria module RAN 8GB 4000MHZ RGB PRO DIM...',
        price: 'Rs. 1,896.48',
        Image4: 'assets/images2/Icon feather-more-horizontal.png'),

    CardFavourite(//3
        Image: 'assets/images2/2.png',
        title: 'CORSAIR Memoria module RAN 8GB 4000MHZ RGB PRO DIM...',
        price: 'Rs. 1,896.48',
        Image4: 'assets/images2/Icon feather-more-horizontal.png'),

    CardFavourite(//4
        Image: 'assets/images2/Rectangle 2629_2.png',
        title: 'CORSAIR Memoria module RAN 8GB 4000MHZ RGB PRO DIM...',
        price: 'Rs. 1,896.48',
        Image4: 'assets/images2/Icon feather-more-horizontal.png'),

    CardFavourite(//5
        Image: 'assets/images2/coca-cola-cans-and-glasses-with-lines-50593.png',
        title: 'CORSAIR Memoria module RAN 8GB 4000MHZ RGB PRO DIM...',
        price: 'Rs. 1,896.48',
        Image4: 'assets/images2/Icon feather-more-horizontal.png'),

    CardFavourite(//6
        Image: 'assets/images2/coca-cola-cans-and-glasses-with-lines-50593.png',
        title: 'CORSAIR Memoria module RAN 8GB 4000MHZ RGB PRO DIM...',
        price: 'Rs. 1,896.48',
        Image4: 'assets/images2/Icon feather-more-horizontal.png'),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEF2F9),
      body:
      SingleChildScrollView(
        child: SafeArea(
          child: Container(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(height: 1.h,),

                //P1
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
                          'Favourite',
                          style: TextStyle(
                            color: ColorsSys.titleTextColor,
                            fontFamily: 'OpenSans_Semibold',
                            fontSize: 59.sp,
                          ),
                        ),
                      ),

                      SizedBox(width: 738.w,),

                      //Icon Shop cart
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context)=> HomeScreenLight()));
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 29.2.w,right: 30.w,top: 32.h,bottom: 31.h ),
                          margin: EdgeInsets.only(right: 53.w,top: 52.h,bottom: 43.h ),
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

                // Material(
                //   child: InkWell(
                //     onTap: (){
                //       setState(() {
                //         Navigator.push(context, MaterialPageRoute(
                //             builder: (context)=> HomeScreenLight()));
                //       });
                //     },
                //     child: Container(
                //       margin: EdgeInsets.only(left: 53.w,top: 46.h,right: 1259.w,bottom: 49.h),
                //       padding: EdgeInsets.only(left: 44.w,top: 32.h,right: 43.9.w,bottom: 31.h),
                //       height: 128.h,
                //       width: 128.w,
                //       decoration: BoxDecoration(
                //         boxShadow: [
                //           new BoxShadow(
                //               color: Color(0xffE8E8E8),
                //               offset: Offset(0.w, 0.h),
                //               blurRadius: 1.r,
                //               spreadRadius: 1.r
                //           )
                //         ],
                //         color: Colors.white,
                //         borderRadius: BorderRadius.circular(24.r),
                //       ),
                //       child:Image(
                //         image: AssetImage('assets/icons/Icon ionic-ios-arrow-back.png'),
                //         width: 20.w,
                //         height: 20.h,
                //       ),
                //     ),
                //   ),
                // ),

                SizedBox(height: 34.h,),

                //p2
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    margin: EdgeInsets.only(left: 53.w,right: 53.w),
                    child:
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        //1
                        // Container(
                        //   height: 451.h,
                        //   width: 1334.w,
                        //   decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(30.r),
                        //     color: Colors.white,
                        //   ),
                        //   child: Stack(
                        //     children: [
                        //
                        //       //image
                        //       Container(
                        //         margin: EdgeInsets.only(left: 49.w,top: 44.h,right: 949.w,bottom: 71.h),
                        //         width: 336.w,
                        //         height: 336.h,
                        //         child: Image(image: AssetImage('assets/images/Rectangle 2629.png'),
                        //         width: 336.w,
                        //         height: 336.h,
                        //         fit: BoxFit.fill,
                        //         ),
                        //       ),
                        //
                        //       //Content1
                        //       Container(
                        //         margin: EdgeInsets.only(left:451.w,top: 44.h,right: 49.w,bottom: 247.h),
                        //         width: 834.w,
                        //         height: 160.h,
                        //         child: Text('CORSAIR Memoria module RAN\n8GB 4000MHZ RGB PRO DIM...',
                        //         style: TextStyle(
                        //           color: Color(0xff52575C),
                        //           fontSize: 52.sp,
                        //           fontFamily: 'OpenSans_Regular',
                        //         )),
                        //       ),
                        //
                        //       //Content2
                        //       Container(
                        //         margin: EdgeInsets.only(left:451.w,top: 214.h,right: 320.w,bottom: 157.h),
                        //         width: 834.w,
                        //         height: 160.h,
                        //         child: Text('RS. 1,896.48',
                        //             style: TextStyle(
                        //               color: ColorsSys.titleTextColor,
                        //               fontSize: 59.sp,
                        //               fontFamily: 'OpenSans_Semibold',
                        //             )),
                        //       ),
                        //
                        //       // dots
                        //       Container(
                        //         margin: EdgeInsets.only(left:1215.w,top: 375.1.h,right: 60.2.w,bottom: 65.h),
                        //         width: 58.76.w,
                        //         height: 10.84.h,
                        //         child:Image(
                        //           image: AssetImage('assets/images/Icon feather-more-horizontal.png'),
                        //         ),
                        //       ),
                        //
                        //     ],
                        //   ),
                        // ),

                        buildCardFavourite(item: items[0]),
                        SizedBox(height: 34.h,),
                        buildCardFavourite(item: items[1]),
                        SizedBox(height: 34.h,),
                        buildCardFavourite(item: items[2]),
                        SizedBox(height: 34.h,),
                        buildCardFavourite(item: items[3]),
                        SizedBox(height: 34.h,),
                        buildCardFavourite(item: items[4]),
                        SizedBox(height: 34.h,),
                        buildCardFavourite(item: items[5]),
                        SizedBox(height: 338.h,),


                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

  buildCardFavourite({required CardFavourite item}) =>
      //1
  Container(
    height: 451.h,
    width: 1334.w,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30.r),
      color: Colors.white,
    ),
    child: Stack(
      children: [

        //image
        Container(
          margin: EdgeInsets.only(left: 49.w,top: 44.h,right: 949.w,bottom: 71.h),
          width: 336.w,
          height: 336.h,
          child: Material(
            child: Ink.image(
                image: AssetImage(item.Image),
                fit: BoxFit.fill,
              child: InkWell(
                onTap: (){},
              ),
            ),

          ),
        ),

        //Content1
        Container(
          margin: EdgeInsets.only(left:451.w,top: 44.h,right: 49.w,bottom: 247.h),
          width: 834.w,
          height: 160.h,
          child: Text(item.title,
              style: TextStyle(
                color: Color(0xff52575C),
                fontSize: 52.sp,
                fontFamily: 'OpenSans_Regular',
              )),
        ),

        //Content2
        Container(
          margin: EdgeInsets.only(left:451.w,top: 214.h,right: 320.w,bottom: 157.h),
          width: 834.w,
          height: 160.h,
          child: Text(item.price,
              style: TextStyle(
                color: ColorsSys.titleTextColor,
                fontSize: 59.sp,
                fontFamily: 'OpenSans_Semibold',
              )),
        ),

        // dots
        Container(
          margin: EdgeInsets.only(left:1215.w,top: 375.1.h,right: 60.2.w,bottom: 65.h),
          width: 58.76.w,
          height: 10.84.h,
          child:Material(
            child: Ink.image(
                image: AssetImage(item.Image4),
            fit: BoxFit.fill,
            child: InkWell(
              onTap: (){},
            )),
          ),
        ),

      ],
    ),
  );
}

class CardFavourite{
  late final String Image;
  late final String title;
  late final String price;
  late final String Image4;

  CardFavourite({
    required this.Image,
    required this.title,
    required this.price,
    required this.Image4,
});
}
