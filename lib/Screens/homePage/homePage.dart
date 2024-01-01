import 'package:flutter/material.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:fluttericon/modern_pictograms_icons.dart';
import 'package:get/get.dart';
import 'package:my_calculater/Screens/homePage/inputWidget.dart';
import 'package:my_calculater/controllers/basicCalculaterController.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    BasicCalculaterController controller = Get.put(BasicCalculaterController());
    double screenWidth = MediaQuery.of(context).size.width;
    return GetBuilder<BasicCalculaterController>(builder: (context) {
      return Scaffold(
        // appBar: AppBar(
        //   toolbarHeight: 10,
        // ),
        body: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.minimize_rounded),
                  ),
                  Center(
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {}, icon: Icon(Typicons.eq_outline)),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Typicons.th_large_outline)),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(ModernPictograms.money))
                      ],
                    ),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 25, 10),
                child: Container(
                  alignment: Alignment.bottomRight,
                  height: 225,
                  width: screenWidth,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        controller.expression.isEmpty
                            ? "0"
                            : controller.expression,
                        style:
                            TextStyle(fontSize: controller.expressionTextSize),
                        textAlign: TextAlign.right,
                      ),
                      Text(
                        controller.resultText,
                        style: TextStyle(fontSize: controller.resultTextSize),
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                ),
              ),
              // Stack(
              //   children: [
              //     Container(
              //       height: 225,
              //       width: screenWidth,
              //       decoration: const BoxDecoration(
              //           border: Border(bottom: BorderSide(color: Colors.grey))),
              //     ),
              //     Positioned(
              //       right: 20,
              //       top: 60,
              //       child: Container(
              //         height: 100,
              //         width: 300,
              //         color: Colors.amber,
              //         child: Center(
              //           child: Text(
              //             conroller.numbersList.isEmpty
              //                 ? " "
              //                 : conroller.numbersList.last,
              //             style: TextStyle(fontSize: 30),
              //           ),
              //         ),
              //       ),
              //     ),
              //     Positioned(
              //       right: 20,
              //       top: 160,
              //       child: Text(
              //         "20",
              //         style: TextStyle(fontSize: 40),
              //       ),
              //     )
              //   ],
              // ),
              Flexible(child: inputWidget())
            ],
          ),
        ),
      );
    });
  }
}
