import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'colorsSys.dart';
import 'counter_provider.dart';
import 'my_provide_controller.dart';

class ListViewShoppingCart17 extends StatefulWidget {
  const ListViewShoppingCart17({Key? key}) : super(key: key);

  @override
  State<ListViewShoppingCart17> createState() => _ListViewShoppingCart17State();
}

class _ListViewShoppingCart17State extends State<ListViewShoppingCart17> {
  MyProviderController counter = MyProviderController(0);


  List<CardShoppingCart17> items = [

    CardShoppingCart17(//0
        Image: 'assets/shoppingcart17screen/9455.png',
        Title: 'CORSAIR Memoria Module RAN 8GB 4000MHz RGB PRO DIM sdfsdfsdffgdfgdfg',
        Price: 'Rs. 11,000.00',
        Count:0,),

    CardShoppingCart17(//1
        Image: 'assets/shoppingcart17screen/11064.png',
        Title: 'CORSAIR Memoria Module RAN 8GB 4000MHz RGB PRO DIM sdfsdfsdffgdfgdfg',
        Price: 'Rs. 10,896.00',
        Count:0,
    ),

    CardShoppingCart17(//2
        Image: 'assets/shoppingcart17screen/714tHed1TxL._SL1500_.png',
        Title: 'CORSAIR Memoria Module RAN 8GB 4000MHz RGB PRO DIM sdfsdfsdffgdfgdfg',
        Price: 'Rs. 999.00',
        Count:0

       ),

    CardShoppingCart17(//3
        Image: 'assets/shoppingcart17screen/3747.png',
        Title: 'CORSAIR Memoria Module RAN 8GB 4000MHz RGB PRO DIM sdfsdfsdffgdfgdfg',
        Price: 'Rs. 159.50',
        Count:0

    ),

    CardShoppingCart17(//4
        Image: 'assets/shoppingcart17screen/Rectangle 2629.png',
        Title: 'CORSAIR Memoria Module RAN 8GB 4000MHz RGB PRO DIM sdfsdfsdffgdfgdfg',
        Price: 'Rs. 999.00',
        Count:0
    ),

    CardShoppingCart17(//5
        Image: 'assets/shoppingcart17screen/Rectangle 2629.png',
        Title: 'CORSAIR Memoria Module RAN 8GB 4000MHz RGB PRO DIM sdfsdfsdffgdfgdfg',
        Price: 'Rs. 999.00',
        Count:0
    ),

    CardShoppingCart17(//6
        Image: 'assets/shoppingcart17screen/3747.png',
        Title: 'CORSAIR Memoria Module RAN 8GB 4000MHz RGB PRO DIM sdfsdfsdffgdfgdfg',
        Price: 'Rs. 159.50',
        Count:0
    ),

  ];


  @override
  void initState() {
    super.initState();
    BuildContext;
  }

  @override
  Widget build(BuildContext context) {
    
    print('Provider Example App  thuoc (${context.watch<Counter>().count})');
    return Container(
      child: ListView.builder(
          itemCount:items.length ,
          itemBuilder: (context,index){
            return buildCardShoppingCart( item: items[index]);
          }
      ),
    );
  }

  buildCardShoppingCart({required CardShoppingCart17 item}) {

     int _itemCount;
     _itemCount=item.Count;
     // if(item!=null)_itemCount =item.Count ;

    return
      Container(
        width: 1334.w,
        height: 421.h,
        margin: EdgeInsets.only(left: 53.w,right: 53.w,top: 34.h),
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

                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      //image
                      Container(
                        margin: EdgeInsets.only(left: 40.w, top: 40.h),
                        width: 232.w,
                        height: 232.h,
                        child: Image(
                          image: AssetImage(item.Image),
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
                              item.Title,
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
                              item.Price,
                              style: TextStyle(
                                  color: ColorsSys.titleTextColor,
                                  fontSize: 59.sp,
                                  fontFamily: 'OpenSans_Semibold'),
                            ),
                          ),

                        ],
                      ),

                      //Delete
                      GestureDetector(
                        onTap: (){
                         setState(() {
                           items.remove(item);
                         });
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 92.5.w,top: 41.7.h),
                          width: 31.4.w,
                          height: 32.42.h,
                          child: Image(
                            image: AssetImage(
                                'assets/shoppingcart17screen/Group 5130.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),

                    ],
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

                      GestureDetector(
                        onTap: () {
                          context.read<Counter>().decrement();

                          setState(() {
                            if (item.Count  <= 0) {
                              item.Count=0;
                            }else{

                              item.Count=item.Count-1;
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
                            item.Count=item.Count+1;
                            counter.incrementValue();
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
      );
  }



}

class CardShoppingCart17 {
  late final String Image;
  late final String Title;
  late final String Price;
    int Count;

  CardShoppingCart17({
    required this.Image,
    required this.Title,
    required this.Price,
    required this.Count,
  });

}
