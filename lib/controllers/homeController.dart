import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_calculater/Screens/homePage/homePage.dart';
import 'package:my_calculater/Screens/pageThree.dart';
import 'package:my_calculater/Screens/pageTwo.dart';

class HomeController extends GetxController {
  late TabController tabConroller;
  List<Widget> widgets = [HomePage(), PageTwo(), PageThree()];
  int index = 0;
  updateIndex(int i) {
    index = i;
    update();
  }
}
