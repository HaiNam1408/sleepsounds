import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:sizer/sizer.dart';
import 'package:sleepsounds/src/modules/option_sound/component/bottom_buttons.dart';
import 'package:sleepsounds/src/modules/option_sound/component/button_option_sound.dart';
import 'package:sleepsounds/src/modules/option_sound/component/grid_view.dart';

class OptionSoundScreen extends GetView<OptionSoundScreen> {
  const OptionSoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> data = [
      {
        "name": "Mưa rơi",
        "icon": "assets/player_screen/rain.png",
      },
      {
        "name": "Tiếng sấm",
        "icon": "assets/player_screen/thunder.png",
      },
    ];

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
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            BtnOptionSound(
                              onTap: () {},
                              onChanged: ((value) {}),
                              hideBtnClose: true,
                              text: data[index]['name'],
                              image: data[index]['icon'],
                            ),
                          ],
                        );
                      }),
                ),
                const Text(
                  'Tất cả Âm thanh',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.white70),
                ),
                GridViewCustom(data: data, hideBtnClose: false),
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
