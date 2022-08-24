import 'package:flutter/material.dart';

class MyProviderController extends ValueNotifier{

  MyProviderController(super.value);

  void incrementValue(){
    value++;
  }

}