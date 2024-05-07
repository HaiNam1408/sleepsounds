import 'package:flutter/material.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:get/instance_manager.dart';
import 'package:sizer/sizer.dart';
import 'package:sleepsounds/src/modules/player/player_controller.dart';

class TimerPicker extends StatelessWidget {
  TimerPicker({super.key});
  PlayerController controller = Get.put(PlayerController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Giờ',
              style: TextStyle(
                  color: Colors.white60,
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            ),
            TimePickerSpinner(
              time: controller.selectedTime.value,
              alignment: Alignment.center,
              isForce2Digits: true,
              is24HourMode: true,
              isShowSeconds: false,
              normalTextStyle: const TextStyle(
                  color: Colors.white60,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
              highlightedTextStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
              itemHeight: 80,
              itemWidth: 25.w,
              spacing: 0,
              onTimeChange: (time) {
                controller.changeSelectedTime(time);
              },
            ),
            const Text(
              'Phút',
              style: TextStyle(
                  color: Colors.white60,
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            ),
          ],
        ),
      ],
    );
  }
}
