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
              Get.find<HomeController>().toggleMiniPlayer(true);
              Get.back();
            },
            icon: const Icon(
              Icons.keyboard_arrow_down,
              size: 30,
              color: Colors.white,
            ),
          ),
          title: const Text(
            'Name Sound',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 26),
          ),
        ),
        body: Stack(
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
                        const Image(
                            image: AssetImage(
                                'assets/player_screen/gif_background.gif')),
                        const Positioned.fill(
                            child: Align(
                                alignment: Alignment.center,
                                child: CountdownTimer(
                                  fontSize: 40,
                                  initialSecondsLeft: 20*60,
                                ))),
                        Positioned(
                            bottom: 100,
                            left: 0,
                            right: 0,
                            child: Align(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                  onTap: () {
                                    Get.toNamed(AppRoutes.timerOption);
                                  },
                                  child: const Column(
                                    children: [
                                      Text(
                                        'Bộ đếm giờ',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      ),
                                    ],
                                  )),
                            ))
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
                )),
          ],
        ));
  }
}
