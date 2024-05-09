import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:sizer/sizer.dart';
import 'package:sleepsounds/src/modules/option_sound/component/bottom_buttons.dart';
import 'package:sleepsounds/src/modules/option_sound/component/button_option_sound.dart';
import 'package:sleepsounds/src/modules/option_sound/component/grid_view.dart';
import 'package:sleepsounds/src/modules/option_sound/option_sound_controller.dart';

class OptionSoundScreen extends GetView<OptionSoundController> {
  final List<String> listSound;
  const OptionSoundScreen({super.key, this.listSound = const []});

  @override
  Widget build(BuildContext context) {
    controller.setListSound(listSound);
    return Scaffold(
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
            bottom: 0,
            right: 20,
            left: 20,
            top: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Lựa chọn hiện tại',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.white70),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                    height: 160,
                    child: Obx(
                      () => ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.listSound.length,
                          itemBuilder: (context, index) {
                            return Row(
                              children: [
                                Obx(() => BtnOptionSound(
                                      onTap: () {
                                        controller.changeListSound(
                                            controller.listSound[index]['sound']
                                                as String);
                                      },
                                      onChanged: ((value) {}),
                                      hideBtnClose: true,
                                      text: controller.listSound[index]['name'],
                                      image: controller.listSound[index]
                                          ['icon'],
                                    )),
                              ],
                            );
                          }),
                    )),
                const Text(
                  'Tất cả Âm thanh',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.white70),
                ),
                GridViewCustom(data: controller.data, hideBtnClose: false),
              ],
            ),
          ),
          const Positioned(
              left: 30, right: 30, bottom: 20, child: BottomButtons())
        ],
      ),
    );
  }
}
