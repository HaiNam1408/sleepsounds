import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sleepsounds/src/modules/player/player_controller.dart';

class CountdownTimer extends GetWidget<PlayerController> {
  final double fonsize;
  const CountdownTimer({super.key, this.fonsize = 40});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Text(
          controller.formatTime(controller.secondsLeft.value),
          style: TextStyle(
            color: Colors.white,
            fontSize: fonsize,
            fontWeight: FontWeight.bold,
          ),
        ));
  }
}
