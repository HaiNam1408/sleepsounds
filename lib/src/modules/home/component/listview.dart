import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:sleepsounds/src/modules/player/player_controller.dart';
import 'package:sleepsounds/src/modules/player/player_screen.dart';
import 'package:sleepsounds/src/router/app_routes.dart';

class ListViewCustom extends StatelessWidget {
  final List<Map<String, dynamic>> data;
  ListViewCustom({super.key, required this.data});
  PlayerController playerController = Get.put(PlayerController());

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: data.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        childAspectRatio: 1,
      ),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () => {
            playerController.initPlayer(data[index]['name'],
                data[index]['image'], data[index]['sounds']),
            Get.to(const PlayerScreen()),
          },
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: Colors.grey,
                    image: DecorationImage(
                      image: NetworkImage(data[index]['image']),
                      fit: BoxFit.cover,
                    )),
              ),
              Positioned(
                  right: 0,
                  left: 0,
                  bottom: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 40.w,
                        child: Text(
                          data[index]['name'],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        );
      },
    );
  }
}
