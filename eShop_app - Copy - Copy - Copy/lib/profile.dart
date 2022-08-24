import 'package:eshop_app/colorsSys.dart';
import 'package:eshop_app/edit_profile_screen.dart';
import 'package:eshop_app/favourite_screen.dart';
import 'package:eshop_app/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  //TextEditingController _controller =TextEditingController();

List<CardProfile> items = [

  CardProfile(//0
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
      title: 'Logout'),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsSys.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(

          child: Container(

            margin: EdgeInsets.only(left: 53.w,right: 52.w),

            child: Column(
              children: [

                SizedBox(height: 123.h,),

                //p1-- information
                Container(
                  child: Row(
                    children: [

                      //Information
                      Container(
                        height: 293.h,
                        width: 823.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text('Alex Bender',
                            style: TextStyle(
                              color: Color(0xff52575C),
                              fontFamily: 'OpenSans_Semibold',
                              fontSize: 75.sp,
                            ),),

                            Text('alexbender@gmail.com',
                              style: TextStyle(
                                color: Color(0xff52575C),
                                fontFamily: 'OpenSans_Regular',
                                fontSize: 74.sp,
                              ),),

                            SizedBox(height: 37.h,),


                            //Edit profile
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)
                                => EditProfileScreen()));
                              },
                              child: Container(
                                height: 52.h,
                                width: 237.21.w,
                                decoration: BoxDecoration(
                                ),
                                child: Stack(
                                  children: [
                                    Text('Edit Profile',
                                    style: TextStyle(
                                      fontSize: 38.sp,
                                      fontFamily: 'OpenSans_Regular',
                                      color: Color(0xffFC6A57)
                                    ),),

                                    //SizedBox(width: 27.9.h,),

                                    Center(
                                      child: Container(
                                        margin: EdgeInsets.only(left: (192+27.9).w),
                                        height: 30.h,
                                        width: 34.54.w,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/images/Polygon 3.png')
                                          )
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),

                      SizedBox(width: 161.w,),

                      //Avatar
                      Container(
                        height: 294.h,
                        width: 294.w,
                        child:CircleAvatar(
                          backgroundImage: AssetImage(
                            'assets/images/NoPath.png'
                          ),
                        ),
                      ),

                    ],
                  ),
                ),

                SizedBox(height: 104.h,),

                //List1
                Container(
                  height: 1193.h,
                  width: 1334.96.w,
                  padding: EdgeInsets.only(left: 43.w, top: 84.h,),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.r)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildProfileList(item: items[0]),
                      SizedBox(height: 45.3.h,),
                      buildProfileList(item: items[1]),
                      SizedBox(height: 45.3.h,),
                      buildProfileList(item: items[2]),
                      SizedBox(height: 45.3.h,),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return SettingsScreen();
                          }));
                        },
                        child: buildProfileList(item: items[3]),
                      ),
                      SizedBox(height: 45.3.h,),
                      buildProfileList(item: items[4]),
                      SizedBox(height: 45.3.h,),
                      buildProfileList(item: items[5]),


                    ],
                  ),
                ),


                SizedBox(height: 42.h,),

                //List2
                Container(
                  height: 1074.h,
                  width: 1334.w,
                  padding: EdgeInsets.only(left: 43.w, top: 80.h,),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildProfileList(item: items[6]),
                      SizedBox(height: 45.3.h,),
                      buildProfileList(item: items[7]),
                      SizedBox(height: 45.3.h,),
                      buildProfileList(item: items[8]),
                      SizedBox(height: 45.3.h,),
                      buildProfileList(item: items[9]),
                      SizedBox(height: 45.3.h,),
                      buildProfileList(item: items[10]),

                    ],
                  ),

                ),


                SizedBox(height: 405.h,),
              ],
            ),
          ),
        ),
      ),
    );



  }



  buildProfileList({required CardProfile item}) =>

      //p1
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
          child: Image(
              image: AssetImage(item.Image),
              fit: BoxFit.fill),
        ),

        Container(
          padding: EdgeInsets.only(left: (69+47).w),
          child: Text(item.title,
            style: TextStyle(
              color: Color(0xff52575C),
              fontFamily: 'OpenSans_Semibold',
              fontSize: 60.sp,
            ),),
        ),

        Container(
          padding: EdgeInsets.only(left: (69+47).w,top: 150.h ),
          child: Divider(
            color: Color(0xff928F8F),
          ),
        ),

        SizedBox(height: 45.3.h,),
      ],
    ),
  );


}

class CardProfile {
  late final String Image;
  late final String title;


  CardProfile({
    required this.Image,
    required this.title,

});
}