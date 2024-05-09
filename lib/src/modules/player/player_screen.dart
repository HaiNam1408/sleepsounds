import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:sleepsounds/src/modules/home/home_controller.dart';
import 'package:sleepsounds/src/modules/player/component/button_play.dart';
import 'package:sleepsounds/src/modules/player/component/button_sound.dart';
import 'package:sleepsounds/src/modules/player/component/timer.dart';
import 'package:sleepsounds/src/modules/player/player_controller.dart';
import 'package:sizer/sizer.dart';
import 'package:sleepsounds/src/router/app_routes.dart';

class PlayerScreen extends GetView<PlayerController> {
  const PlayerScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.keyboard_arrow_down,
              size: 30,
              color: Colors.white,
            ),
          ),
          title: Text(
            controller.name.value,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 26),
          ),
        ),
        body: Wrap(
          children: [
            Stack(
              children: [
                Container(
                  width: 100.w,
                  height: 100.h,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/background.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                    top: 50,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            // const Image(
                            //     image: AssetImage(
                            //         'assets/player_screen/gif_background.gif')),
                            const SizedBox(
                              width: 300,
                              height: 300,
                            ),
                            Positioned.fill(
                                child: GestureDetector(
                              onTap: () {
                                Get.toNamed(AppRoutes.timerOption);
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Obx(() => controller.isShowTimer.value
                                      ? const CountdownTimer()
                                      : const SizedBox()),
                                  const Text(
                                    'Bộ đếm giờ',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ],
                              ),
                            )),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ButtonSound(
                                text: '50%',
                                image: 'assets/player_screen/rain.png'),
                            SizedBox(
                              width: 20,
                            ),
                            ButtonSound(
                                text: '50%',
                                image: 'assets/player_screen/thunder.png'),
                            SizedBox(
                              width: 20,
                            ),
                            ButtonSound(
                                text: 'Sửa',
                                image: 'assets/player_screen/edit.png'),
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        const ButtonPlay()
                      ],
                    ))
              ],
            ),
          ],
        ));
  }
}
