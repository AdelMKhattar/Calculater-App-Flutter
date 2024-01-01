import 'package:flutter/material.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:get/get.dart';
import 'package:my_calculater/controllers/basicCalculaterController.dart';
import 'package:my_calculater/core/widgets/numberIcon.dart';

class inputWidget extends StatelessWidget {
  const inputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    BasicCalculaterController controller = Get.find();
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          // color: Colors.amber,
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      controller.clearExpression();
                    },
                    icon: const Icon(
                      Icons.clear_rounded,
                      size: 30,
                    )),
                IconButton(
                    onPressed: () {
                      controller.backSpace();
                    },
                    icon: const Icon(
                      Icons.backspace_outlined,
                      size: 30,
                    )),
                IconButton(
                    onPressed: () {
                      controller.percentagePressed();
                    },
                    icon: const Icon(
                      Icons.percent_outlined,
                      size: 30,
                    )),
                IconButton(
                    onPressed: () {
                      controller.numberPressed("/");
                    },
                    icon: const Icon(
                      Typicons.divide,
                      size: 30,
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const NumberIcon(number: "7"),
                const NumberIcon(number: "8"),
                const NumberIcon(number: "9"),
                IconButton(
                  onPressed: () {
                    controller.numberPressed("*");
                  },
                  icon: const Icon(Typicons.cancel),
                  iconSize: 30,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const NumberIcon(number: "4"),
                const NumberIcon(number: "5"),
                const NumberIcon(number: "6"),
                IconButton(
                  onPressed: () {
                    controller.numberPressed("-");
                  },
                  icon: const Icon(Typicons.minus),
                  iconSize: 30,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const NumberIcon(number: "1"),
                const NumberIcon(number: "2"),
                const NumberIcon(number: "3"),
                IconButton(
                  onPressed: () {
                    controller.numberPressed("+");
                  },
                  icon: const Icon(Typicons.plus_outline),
                  iconSize: 30,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.swap_horiz,
                      size: 40,
                    )),
                const NumberIcon(number: "0"),
                const NumberIcon(number: "."),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(40)),
                  child: IconButton(
                    onPressed: () {
                      controller.equalPressed();
                    },
                    icon: const Icon(
                      Typicons.eq,
                      color: Colors.white,
                      size: 10,
                    ),
                    iconSize: 30,
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
