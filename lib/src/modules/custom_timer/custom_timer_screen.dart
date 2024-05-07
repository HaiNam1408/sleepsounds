import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:sizer/sizer.dart';
import 'package:sleepsounds/src/modules/custom_timer/component/timer_picker.dart';
import 'package:sleepsounds/src/modules/custom_timer/custom_timer_controller.dart';

import '../timer_option/component/bottom_buttons.dart';

class TimerCustomScreen extends GetView<TimerCustomController> {
  const TimerCustomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: 100.w,
      height: 100.h,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.deepPurpleAccent,
              Colors.deepPurple,
            ]),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(50, 50, 50, 0),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  const Text(
                    'Tùy chỉnh',
                    style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  SizedBox(width: 100.w, child: TimerPicker()),
                ],
              ),
            ),
            Positioned(bottom: 50, child: BottomButton()),
          ],
        ),
      ),
    ));
  }
}
