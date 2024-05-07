import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sleepsounds/src/modules/player/player_controller.dart';

class CountdownTimer extends GetWidget<PlayerController> {
  const CountdownTimer({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Text(
          controller.formatTime(controller.secondsLeft.value),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ));
  }
}
