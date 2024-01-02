// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:fluttericon/modern_pictograms_icons.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:get/get.dart';
import 'package:my_calculater/Screens/homePage/homePage.dart';
import 'package:my_calculater/Screens/pageThree.dart';
import 'package:my_calculater/Screens/pageTwo.dart';
import 'package:my_calculater/controllers/homeController.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    return DefaultTabController(
        initialIndex: 0,
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 3,
            bottom: TabBar(
                indicatorColor: Colors.white,
                dividerColor: Colors.white,
                onTap: (value) {},
                labelColor: Colors.orange,
                splashBorderRadius: BorderRadius.circular(40),
                tabs: <Widget>[
                  Tab(
                    child: Icon(
                      Typicons.eq_outline,
                      size: 30,
                    ),
                  ),
                  Tab(
                    child: Icon(
                      Typicons.th_large_outline,
                      size: 30,
                    ),
                  ),
                  Tab(
                    child: Icon(
                      ModernPictograms.money,
                      size: 30,
                    ),
                  ),
                ]),
          ),
          body: TabBarView(children: controller.widgets),
        ));
    ;
  }
}
