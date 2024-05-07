import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sleepsounds/src/modules/player/player_controller.dart';

class ButtonPlay extends GetWidget<PlayerController> {
  const ButtonPlay({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: ElevatedButton(
        onPressed: controller.resumeSound,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white24,
          padding: const EdgeInsets.only(top: 10, bottom: 10),
        ),
        child: Obx(() => Icon(
              controller.isPlaying.value ? Icons.pause : Icons.play_arrow,
              size: 30,
              color: Colors.white,
            )),
      ),
    );
  }
}
