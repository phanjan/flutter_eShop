import 'package:eshop_app/checkout_screen18.dart';
import 'package:eshop_app/home_screen_light.dart';
import 'package:eshop_app/shopping_cart_17.dart';
import 'package:eshop_app/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'counter_provider.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter()),
        //ChangeNotifierProvider(create: (_) => ShoppingCart()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(1440, 2560),
      builder:(context,child)=> MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'eShop App',
        //home: ShoppingCartSCrenn17(),
        initialRoute: '/',
        routes: {
          '/': (context) => CheckOutScreen18(),
          //'/second': (context) => SecondScreen(),
        },
      ),
    );
  }
}

