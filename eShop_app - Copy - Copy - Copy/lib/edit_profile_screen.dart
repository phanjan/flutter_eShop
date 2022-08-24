import 'dart:ffi';

import 'package:eshop_app/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colorsSys.dart';



class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {

  List<CardEditProFile> items = [

    CardEditProFile(//0
      Title: 'Name',
      Infor: 'Alex Bender',
    ),

    CardEditProFile(//1
      Title: 'Email Address',
      Infor: 'alexbender@gmail.com',
    ),

    CardEditProFile(//2
      Title: 'Mobile Number',
      Infor: '+91 9876541230',

    ),

    CardEditProFile(//3
      Title: 'Location',
      Infor: 'Bhuj, Gujarat',

    ),

  ];


  String text = '';

  @override
  void dispose() {
   // text.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsSys.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

             // SizedBox(height: 5.h,),

              //p1 - icon back - edit profile
              Container(
                height: 235.h,
                width: 1440.w,
                decoration: BoxDecoration(
                  color: Colors.white
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    //icon back
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return ProfileScreen();
                        }));
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 53.w,top: 46.h,bottom: 49.h),
                        padding: EdgeInsets.only(left: 44.w,top: 32.h,right: 43.9.w,bottom: 31.h),
                        height: 128.h,
                        width: 128.w,
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
                    ),

                    //Edit Profile
                    Container(
                      height: 80.h,
                      //width: 365.w,
                      decoration: BoxDecoration(),
                      margin:
                          EdgeInsets.only(left: 55.w, top: 70.h, bottom: 73.h),
                      child: Text(
                        'Edit Profile',
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

              SizedBox(height: 150.h,),

              //p2 Circle Avatar
              Center(
                child: Stack(
                  children:[

                    Container(
                      height: 475.h,
                      width: 475.w,
                      child:CircleAvatar(
                        backgroundImage: AssetImage(
                            'assets/images/NoPath.png'
                        ),
                      ),
                    ),

                    //change
                    GestureDetector(
                      onTap: (){

                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 354.w,top: 354.h),
                        height: 84.h,
                        width: 84.w,
                        child:Image(
                          image: AssetImage('assets/images_15_profile/Group 5265.png'),
                          //height: .h,
                          //width: .w,
                          fit: BoxFit.fill,
                        ),
                      ),
                    )
                  ]
                ),
              ),

              SizedBox(height: 150.h,),

              //p3 List
              Container(
                width: 1334.5.w,
                height: 1102.h,
                margin: EdgeInsets.symmetric(horizontal: 53.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.r),
                  color: Colors.white
                ),
                 child:Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [

                     SizedBox(height: 85.h,),

                     //1
                     Container(
                       width: 1334.w,
                       height: 203.5.h,
                       child: Stack(
                         children: [

                           //icon
                           Container(
                             margin: EdgeInsets.only(left: 82.w,top: 36.h),
                             child: Image(image: AssetImage('assets/editprofile/Icon feather-user.png'),
                               height: 70.75.h,
                               width: 64.79.w,
                               fit: BoxFit.fill,
                             ),
                           ),


                           buildEditProfile(item: items[0]),

                           //edit
                           InkWell(
                             onTap: (){
                               showDialog(
                                   context: context,
                                   builder: (context) =>
                                       SimpleDialog(
                                         children: [
                                           Container(
                                             // width: (2560-53-52).w,
                                             height: 500.h,
                                             decoration: BoxDecoration(
                                               borderRadius: BorderRadius.circular(20.r),
                                               color: Colors.white,
                                             ),
                                             child: Column(
                                               mainAxisAlignment: MainAxisAlignment.start,
                                               crossAxisAlignment: CrossAxisAlignment.start,
                                               children: [
                                                 Container(
                                                   margin: EdgeInsets.only(left: 74.5.w,top: 25.h),
                                                   child: Text("Add Name",style: TextStyle(
                                                       color:   ColorsSys.titleTextColor,
                                                       fontSize: 58.sp,
                                                       fontFamily: 'OpenSans_Semibold'
                                                   ),),
                                                 ),

                                                 Divider(thickness: 5.sp,),

                                                 Container(
                                                   height: 120.36.h,
                                                   //width: 1155.21.w,
                                                   margin: EdgeInsets.only(left: 74.5.w,right: 93.1.w,top: 5.h),
                                                   child: TextField(
                                                     onChanged: (value){
                                                       setState(() {
                                                         text=value;
                                                       });
                                                     },
                                                   ),
                                                 ),

                                                 Row(
                                                   mainAxisAlignment: MainAxisAlignment.end,
                                                   crossAxisAlignment: CrossAxisAlignment.start,
                                                   children: [

                                                     GestureDetector(
                                                       onTap:(){
                                                         Navigator.pop(context);
                                                       },
                                                       child: Container(
                                                         margin: EdgeInsets.only(top: 75.6.h),
                                                         child: Text('Cancel',
                                                           style: TextStyle(
                                                               color: Color(0xff52575C),
                                                               fontSize: 55.sp,
                                                               fontFamily: 'OpenSans_Semibold'
                                                           ),),
                                                       ),
                                                     ),

                                                     SizedBox(width: 88.w,),

                                                     GestureDetector(
                                                       onTap: (){
                                                         setState(() {
                                                           print(text);
                                                           items[0].Infor= text;
                                                         });
                                                         Navigator.pop(context);
                                                       },
                                                       child: Container(
                                                         margin: EdgeInsets.only(top: 75.6.h,right: 102.w),
                                                         child: Text('Save',
                                                           style: TextStyle(
                                                               color: ColorsSys.titleTextColor,
                                                               fontSize: 55.sp,
                                                               fontFamily: 'OpenSans_Semibold'
                                                           ),),
                                                       ),
                                                     ),
                                                   ],
                                                 ),
                                               ],
                                             ),
                                           ),
                                         ],
                                       ));
                             },
                             child: Container(
                               margin: EdgeInsets.only(left: 1196.6.w,top:(128-85).h ),
                               width: 57.07.w,
                               height: 57.07.h,
                               child: Image(
                                 fit: BoxFit.fill,
                                 image: AssetImage('assets/editprofile/Icon material-edit.png'),
                               ),
                             ),
                           ),

                         ],
                       ),
                     ),
                     Divider(thickness: 3.5.sp),
                     //SizedBox(height: 59.5.h,),

                     //2
                     Container(
                       width: 1334.w,
                       height: 203.5.h,
                       child: Stack(
                         children: [

                           //icon
                           Container(
                             margin: EdgeInsets.only(left: 72.w,top: (102.5-59.5).h),
                             child: Image(image: AssetImage('assets/editprofile/mail.png'),
                               height: 56.8.h,
                               width: 85.21.w,
                               fit: BoxFit.fill,
                             ),
                           ),

                           //Edit
                           buildEditProfile(item: items[1]),

                           Container(
                             margin: EdgeInsets.only(left: 1196.6.w,top:(128-85).h ),
                             width: 57.07.w,
                             height: 57.07.h,
                             child: Image(
                               fit: BoxFit.fill,
                               image: AssetImage('assets/editprofile/Icon material-edit.png'),
                             ),
                           ),

                         ],
                       ),
                     ),
                     Divider(thickness: 3.5.sp),

                     //3
                     Container(
                       width: 1334.w,
                       height: 203.5.h,
                       child: Stack(
                         children: [

                           //icon
                           Container(
                             margin: EdgeInsets.only(left: 77.w,top: (94.5-60.5).h),
                             child: Image(image: AssetImage('assets/editprofile/call.png'),
                               height: 74.89.h,
                               width:74.89.w,
                               fit: BoxFit.fill,
                             ),
                           ),

                           //Edit
                           buildEditProfile(item: items[2]),

                         ],
                       ),
                     ),
                     Divider(thickness: 3.5.sp),

                     //4
                     Container(
                       width: 1334.w,
                       height: 203.5.h,
                       child: Stack(
                         children: [

                           //icon
                           Container(
                             margin: EdgeInsets.only(left: 87.9.w,top: (102.5-65).h),
                             child: Image(image: AssetImage('assets/editprofile/Icon material-location-on.png'),
                               height: 79.22.h,
                               width: 55.45.w,
                               fit: BoxFit.fill,
                             ),
                           ),

                           //Edit
                           buildEditProfile(item: items[3]),

                           Container(
                             margin: EdgeInsets.only(left: 1196.6.w,top:(128-85).h ),
                             width: 57.07.w,
                             height: 57.07.h,
                             child: Image(
                               fit: BoxFit.fill,
                               image: AssetImage('assets/editprofile/Icon material-edit.png'),
                             ),
                           ),

                         ],
                       ),
                     ),
                     
                   ],
                 )

              ),

              SizedBox(height: 50.h,),

              //Change Password
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.r),
                  color: Colors.white,
                ),
                width: 1334.w,
                height: 172.h,
                margin: EdgeInsets.symmetric(horizontal: 53.w),
                padding: EdgeInsets.only(left: 72.w,top: 54.h),
                child: Text(
                  'Change Password',
                  style: TextStyle(
                    fontSize: 48.sp,
                    fontFamily: 'OpenSans_Semibold',
                    color: ColorsSys.titleTextColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }

  buildEditProfile({required CardEditProFile item}) =>

    //
  Container(
    margin: EdgeInsets.only(left: 225.w),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(item.Title,style: TextStyle(
          color: Color(0xff52575C),
          fontSize: 45.sp,
          fontFamily: 'OpenSans_Regular',
        ),),
        Text(item.Infor,style: TextStyle(
          color: Color(0xff131313),
          fontSize: 55.sp,
          fontFamily: 'OpenSans_Regular',
        ),)

      ],
    ),
  );


}

class CardEditProFile {

  final String Title;
  String Infor;


  CardEditProFile({

    required this.Title,
    required this.Infor,

  });
}



//Text
// Container(
//   margin: EdgeInsets.only(left: 225.w),
//   child: Column(
//     mainAxisAlignment: MainAxisAlignment.start,
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Text('Name',style: TextStyle(
//         color: Color(0xff52575C),
//         fontSize: 45.sp,
//         fontFamily: 'OpenSans_Regular',
//       ),),
//       Text('Alex Bender',style: TextStyle(
//         color: Color(0xff131313),
//         fontSize: 55.sp,
//         fontFamily: 'OpenSans_Regular',
//       ),)
//
//     ],
//   ),
// ),

//Edit

//   print(text);
// // items[0].Infor = text;
// // print(text);
// });
// Navigator.pop(context);