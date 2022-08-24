import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CurrentPasswordTextField extends StatefulWidget {
  const CurrentPasswordTextField({Key? key, required this.controller}) : super(key: key);
  final TextEditingController controller;

  @override
  State<CurrentPasswordTextField> createState() => _CurrentPasswordTextFieldState();
}

class _CurrentPasswordTextFieldState extends State<CurrentPasswordTextField> {

  var obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 119.5.h,
      margin: EdgeInsets.only(left: 93.w,right: 93.1.w),
      child: TextField(
        controller: widget.controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: 'Current Password',
            hintStyle: TextStyle(
                color: Color(0xff52575C),
                fontFamily: 'OpenSans_Regular',
                fontSize: 54.sp
            ),
            suffixIcon: GestureDetector(
                onTap: (){
                  setState(() {
                    obscureText= !obscureText;
                  });
                },
                child:
                obscureText ? Icon(Icons.visibility_off,size: 70.sp, ): Icon(Icons.visibility,size: 70.sp,)
            ),

          )
      ),
    );
  }
}
