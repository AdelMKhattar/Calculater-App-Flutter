import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_calculater/controllers/basicCalculaterController.dart';

class NumberIcon extends StatelessWidget {
  final String number;
  const NumberIcon({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    BasicCalculaterController controller = Get.find();
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
      width: 50,
      height: 50,
      child: InkWell(
        child: Center(
          child: Text(
            number,
            style: const TextStyle(
                color: Colors.black54,
                fontSize: 35,
                fontWeight: FontWeight.bold),
          ),
        ),
        onTap: () {
          controller.numberPressed(number);
        },
      ),
    );
  }
}
