import 'package:eshop_app/con.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShoePage extends StatelessWidget {
  const ShoePage({Key? key,
  required this.item,
  }) : super(key: key);

  final CardItem item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 600.w,
            height: 300.h,
            child: Image.asset(item.Image,
            fit: BoxFit.cover,),
          ),
          SizedBox(height: 8.h,),
        ],
      ),
    );
  }
}



// import 'package:eshop_app/con.dart';
// import 'package:flutter/material.dart';
// class ShoePage extends StatefulWidget {
//
//   const ShoePage({Key? key,
//   required this.item,
//   }) : super(key: key);
//
//   final CardItem item;
//
//   @override
//   State<ShoePage> createState() => _ShoePageState();
// }
//
// class _ShoePageState extends State<ShoePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(item.title),
//       ),
//     );
//   }
// }

