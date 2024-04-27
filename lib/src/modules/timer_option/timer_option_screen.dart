import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:sizer/sizer.dart';
import 'package:sleepsounds/src/modules/timer_option/component/button_option.dart';
import 'package:sleepsounds/src/modules/timer_option/component/cancel_button.dart';
import 'package:sleepsounds/src/modules/timer_option/timer_option_controller.dart';
import 'package:sleepsounds/src/router/app_routes.dart';

import '../option_sound/component/bottom_buttons.dart';

class TimerOptionScreen extends GetView<TimerOptionController> {
  const TimerOptionScreen({super.key});

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
                ]
            )
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 50, right: 50, left: 50),
          child: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                Text(
                  'Cài đặt Bộ hẹn giờ',
                  style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.w500,
                    fontSize: 18
                  ),
                ),
                SizedBox(height: 15,),
                SizedBox(
                  width: 100.w,
                  child: ButtonOption(
                      onPressed: (){},
                      text: '15 phút'
                  ),
                ),
                SizedBox(height: 15,),
                SizedBox(
                  width: 100.w,
                  child: ButtonOption(
                      onPressed: (){},
                      text: '30 phút'
                  ),
                ),
                SizedBox(height: 15,),
                SizedBox(
                  width: 100.w,
                  child: ButtonOption(
                      onPressed: (){},
                      text: '1 giờ'
                  ),
                ),
                SizedBox(height: 15,),
                SizedBox(
                  width: 100.w,
                  child: ButtonOption(
                      onPressed: (){},
                      text: '2 giờ'
                  ),
                ),
                SizedBox(height: 15,),
                SizedBox(
                  width: 100.w,
                  child: ButtonOption(
                      onPressed: (){
                        Get.toNamed(AppRoutes.timerCustom);
                      },
                      text: 'Tùy chỉnh'
                  ),
                ),
                SizedBox(height: 15,),
                SizedBox(
                  width: 100.w,
                  child: ButtonOption(
                      onPressed: (){},
                      text: 'Tắt'
                  ),
                ),
                SizedBox(height: 50,),
                SizedBox(
                  width: 100.w,
                    child: CancelButton()
                ),
                SizedBox(height: 50,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
