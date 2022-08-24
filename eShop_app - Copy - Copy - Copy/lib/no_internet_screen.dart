import 'package:eshop_app/colorsSys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoInternetScreen extends StatelessWidget {
  const NoInternetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1440, 2560),
        builder: (context,child)=> Scaffold(
          backgroundColor: ColorsSys.backgroundColor,
          body: SafeArea(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 450.h,),
                  //Image
                  Container(
                    width: 1237.33.w ,
                    height: 714.h ,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/no_internet.png'),
                        fit: BoxFit.fill
                      )
                    ),
                  ),
                  SizedBox(height: 128.h,),
                Text('No Internet',
                  style: TextStyle(
                    fontSize: 115.sp,
                    fontFamily: 'OpenSans_Semibold',
                    color: ColorsSys.titleTextColor,
                  ),),

                  SizedBox(height: 110.h,),
                Text('Please check your connection\nagain, or connection to Wi-Fi',
                  textAlign: TextAlign.center ,
                  style: TextStyle(
                    fontSize: 65.sp,
                    fontFamily: 'OpenSans_Regular',
                    color: ColorsSys.subtitleTextColor,
                  ),),

                SizedBox(height: 331.h,),


                //btn Try Again
                Container(
                  height: 175.h,
                  width: 1289.w,
                  child: RaisedButton(
                    onPressed: (){

                    },
                    padding: EdgeInsets.all(0.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.r),
                    ),
                    child: Ink(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [Color(0xffFFBD69),Color(0xffFF6363)],
                          ),
                          borderRadius: BorderRadius.circular(40.r)
                      ),
                      child: Container(
                        constraints: BoxConstraints(maxWidth: 1289.w ,minHeight:175.h ),
                        child: Center(
                          child: Text(
                            'Try Again',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'OpenSans_Regular',
                              fontSize: 65.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                ],
              ),
            ),
          ),
        ));
  }
}
