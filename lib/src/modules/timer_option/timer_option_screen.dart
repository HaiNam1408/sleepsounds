import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:sleepsounds/src/modules/player/player_controller.dart';
import 'package:sleepsounds/src/modules/timer_option/component/button_option.dart';
import 'package:sleepsounds/src/modules/timer_option/component/cancel_button.dart';
import 'package:sleepsounds/src/modules/timer_option/timer_option_controller.dart';
import 'package:sleepsounds/src/router/app_routes.dart';

class TimerOptionScreen extends GetView<TimerOptionController> {
  TimerOptionScreen({super.key});
  PlayerController playerController = Get.put(PlayerController());
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
            ])),
        child: Padding(
          padding: const EdgeInsets.only(top: 50, right: 50, left: 50),
          child: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                const Text(
                  'Cài đặt Bộ hẹn giờ',
                  style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: 100.w,
                  child: ButtonOption(
                      onPressed: () {
                        playerController.changeSecondsLeft(899);
                        Get.back();
                      },
                      text: '15 phút'),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: 100.w,
                  child: ButtonOption(
                      onPressed: () {
                        playerController.changeSecondsLeft(1799);
                        Get.back();
                      },
                      text: '30 phút'),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: 100.w,
                  child: ButtonOption(
                      onPressed: () {
                        playerController.changeSecondsLeft(3599);
                        Get.back();
                      },
                      text: '1 giờ'),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: 100.w,
                  child: ButtonOption(
                      onPressed: () {
                        playerController.changeSecondsLeft(7199);
                        Get.back();
                      },
                      text: '2 giờ'),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: 100.w,
                  child: ButtonOption(
                      onPressed: () {
                        Get.toNamed(AppRoutes.timerCustom);
                      },
                      text: 'Tùy chỉnh'),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: 100.w,
                  child: ButtonOption(
                      onPressed: () {
                        playerController.changeSecondsLeft(0);
                        Get.back();
                      },
                      text: 'Tắt'),
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(width: 100.w, child: const CancelButton()),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
