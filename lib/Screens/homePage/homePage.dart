import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_calculater/Screens/homePage/inputWidget.dart';
import 'package:my_calculater/controllers/basicCalculaterController.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    BasicCalculaterController controller = Get.put(BasicCalculaterController());
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return GetBuilder<BasicCalculaterController>(builder: (context) {
      return Scaffold(
        // appBar: AppBar(
        //   toolbarHeight: 10,
        // ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 25, 10),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                    width: 2,
                    color: Colors.grey.shade400,
                  ))),
                  alignment: Alignment.bottomRight,
                  height: (screenHeight * 20) / 100,
                  width: screenWidth,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        controller.expression.isEmpty
                            ? "0"
                            : controller.expression,
                        style: TextStyle(
                            fontSize: controller.expressionTextSize,
                            fontWeight: FontWeight.bold),
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
              const Flexible(child: inputWidget()),
            ],
          ),
        ),
      );
    });
  }
}
