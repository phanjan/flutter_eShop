import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShowHideIconChangePassword33 extends StatefulWidget {
   ShowHideIconChangePassword33({Key? key,
    required this.controller,
    required this.title}) : super(key: key);

  final TextEditingController controller;
  final String title;

  @override
  State<ShowHideIconChangePassword33> createState() => _ShowHideIconChangePassword33State();
}

class _ShowHideIconChangePassword33State extends State<ShowHideIconChangePassword33> {

  var obScureText = true;


  @override
  Widget build(BuildContext context) {

    return Container(
      height: 119.5.h,
      margin: EdgeInsets.only(left: 93.w,right: 93.1.w),
      child: TextField(
          controller: widget.controller,
          obscureText: obScureText,
          decoration: InputDecoration(
            hintText: widget.title,
            hintStyle: TextStyle(
                color: Color(0xff52575C),
                fontFamily: 'OpenSans_Regular',
                fontSize: 54.sp
            ),
            suffixIcon: GestureDetector(
                onTap: (){
                  setState(() {
                    obScureText= !obScureText;
                  });
                },
                child:
                obScureText ? Icon(Icons.visibility_off,size: 70.sp, ): Icon(Icons.visibility,size: 70.sp,)
            ),

          )
      ),
    );
  }
}
