import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:sizer/sizer.dart';
import 'package:sleepsounds/src/modules/%20sleep_time_reminder/component/switch.dart';
import 'package:sleepsounds/src/modules/%20sleep_time_reminder/component/time_reminder.dart';
import 'package:sleepsounds/src/modules/%20sleep_time_reminder/component/time_repeater.dart';
import 'package:sleepsounds/src/modules/%20sleep_time_reminder/sleep_time_reminder_controller.dart';

class TimeReminderScreen extends GetView<TimeReminderController> {
  const TimeReminderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> items = ["C", "2", "3", "4", "5", "6", "7"];
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 26,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          title: const Text(
            'Nhắc nhở thời gian ngủ',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ),
        body: GetBuilder<TimeReminderController>(
          builder: (controller) {
            return Stack(
              children: [
                Container(
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
                ),
                Positioned(
                  left: 20,
                  right: 20,
                  top: 100,
                  child: GestureDetector(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Nhắc nhở thời gian ngủ',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Obx(() => SwitchButton(
                                  value: controller.isSwitchOn.value,
                                  onChanged: (value) {
                                    controller.updateSwitch(value);
                                  },
                                ))
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Thời gian ngủ đều đặn giấc giúp tạo ra thói quen ngủ lành mạnh',
                          style: TextStyle(
                            color: Colors.white60,
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Obx(() => Opacity(
                              opacity: controller.isSwitchOn.value ? 1 : 0.5,
                              child: TimeReminderButton(
                                onTap: controller.isSwitchOn.value
                                    ? () {
                                        Navigator.pop(context);
                                      }
                                    : null,
                              ),
                            )),
                        SizedBox(
                          height: 25,
                        ),
                        Obx(() => Opacity(
                              opacity: controller.isSwitchOn.value ? 1 : 0.5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Lặp lại',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      TimeRepeater(
                                        isActive: controller.isActive1.value,
                                        onTap: controller.isSwitchOn.value
                                            ? () {
                                                controller.updateActive1();
                                              }
                                            : null,
                                        text: 'C',
                                      ),
                                      TimeRepeater(
                                        isActive: controller.isActive2.value,
                                        onTap: controller.isSwitchOn.value
                                            ? () {
                                                controller.updateActive2();
                                              }
                                            : null,
                                        text: '2',
                                      ),
                                      TimeRepeater(
                                        isActive: controller.isActive3.value,
                                        onTap: controller.isSwitchOn.value
                                            ? () {
                                                controller.updateActive3();
                                              }
                                            : null,
                                        text: '3',
                                      ),
                                      TimeRepeater(
                                        isActive: controller.isActive4.value,
                                        onTap: controller.isSwitchOn.value
                                            ? () {
                                                controller.updateActive4();
                                              }
                                            : null,
                                        text: '4',
                                      ),
                                      TimeRepeater(
                                        isActive: controller.isActive5.value,
                                        onTap: controller.isSwitchOn.value
                                            ? () {
                                                controller.updateActive5();
                                              }
                                            : null,
                                        text: '5',
                                      ),
                                      TimeRepeater(
                                        isActive: controller.isActive6.value,
                                        onTap: controller.isSwitchOn.value
                                            ? () {
                                                controller.updateActive6();
                                              }
                                            : null,
                                        text: '6',
                                      ),
                                      TimeRepeater(
                                        isActive: controller.isActive7.value,
                                        onTap: controller.isSwitchOn.value
                                            ? () {
                                                controller.updateActive7();
                                              }
                                            : null,
                                        text: '7',
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  left: 0,
                  bottom: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                            width: 100, // Adjust the size of the circle as needed
                            height: 100,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Colors.purpleAccent,
                                      Colors.deepPurpleAccent,
                                    ])),
                            child: const Icon(
                              Icons.check_outlined,
                              size: 40,
                              color: Colors.white,
                            )),
                      ),
                    ],
                  ),
                )
              ],
            );
          },
        ));
  }
}
