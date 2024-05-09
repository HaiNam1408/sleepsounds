import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:sleepsounds/src/data/model/audio.dart';
import 'package:sleepsounds/src/data/model/sound.dart';
import 'package:sleepsounds/src/modules/home/component/buttons_custom1.dart';
import 'package:sleepsounds/src/modules/home/component/miniPlayer.dart';
import 'package:sleepsounds/src/modules/home/home_controller.dart';
import 'package:sleepsounds/src/modules/home/component/listview.dart';
import 'package:sleepsounds/src/modules/home/component/sliver_builder_custom.dart';
import 'package:sleepsounds/src/router/app_routes.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> data = [
      {
        "name": "Tiếng mưa xuân",
        "image":
            "https://bizweb.dktcdn.net/100/438/408/files/hinh-nen-thien-nhien-4k-yody-vn-1-jpeg.jpg?",
        "id": "1",
        "sounds": ['assets/audio/spring_rain.mp3']
      },
      {
        "name": "Mưa với piano",
        "image":
            "https://media.istockphoto.com/id/502324324/photo/enjoyment.jpg?s=612x612&w=0&k=20&c=6PPFSorv0D_U7r3JQlymioQLfeqXyzCVNySJHVEOmEA=",
        "id": "2",
        "sounds": ['assets/audio/piano.mp3', 'assets/audio/spring_rain.mp3']
      },
      {
        "name": "Mưa trong Rừng",
        "image":
            "https://i.pinimg.com/originals/2d/27/91/2d2791281c3f4dc5ba5833886dd1db54.jpg",
        "id": "3",
        "sounds": ['assets/audio/forest_rain.mp3']
      },
      {
        "name": "Mưa trên mái nhà",
        "image":
            "https://www.roofonemichigan.com/wp-content/uploads/2018/07/65459917_s.jpg",
        "id": "4",
        "sounds": ['assets/audio/rooftop_rain.mp3']
      },
      {
        "name": "Mưa nhẹ",
        "image":
            "https://www.thestatesman.com/wp-content/uploads/2019/01/Rain.jpg",
        "id": "5",
        "sounds": ['assets/audio/spring_rain.mp3']
      },
      {
        "name": "Mưa mùa hè",
        "image":
            "https://i.pinimg.com/originals/70/1d/44/701d44679ff515733d01626f6f5f2113.jpg",
        "id": "6",
        "sounds": ['assets/audio/spring_rain.mp3']
      },
      {
        "name": "Dông bão",
        "image":
            "https://media.istockphoto.com/id/517643357/photo/thunderstorm-lightning-with-dark-cloudy-sky.jpg?s=612x612&w=0&k=20&c=x3G3UijRPVGFMFExnlYGbnQtnlH6-oUoMU48BTkc0Os=",
        "id": "7",
        "sounds": ['assets/audio/spring_rain.mp3']
      },
      {
        "name": "Mưa cuối tuần",
        "image":
            "https://static.vecteezy.com/system/resources/previews/029/771/023/non_2x/human-daily-life-on-rainy-day-enjoying-rainfall-and-happy-life-lively-rainy-season-concept-generative-ai-free-photo.jpeg",
        "id": "8",
        "sounds": ['assets/audio/spring_rain.mp3']
      },
      {
        "name": "Mưa trên cửa sổ ô tô",
        "image":
            "https://images.pexels.com/photos/1765286/pexels-photo-1765286.jpeg",
        "id": "9",
        "sounds": ['assets/audio/spring_rain.mp3']
      },
      {
        "name": "Mưa trên lá",
        "image":
            "https://t3.ftcdn.net/jpg/01/77/15/58/360_F_177155803_46e2XKhrW1sC5SOVTV5Xcv2KVAhZt9Dn.jpg",
        "id": "10",
        "sounds": ['assets/audio/spring_rain.mp3']
      },
      {
        "name": "Mưa trên lều",
        "image":
            "https://t3.ftcdn.net/jpg/05/68/49/90/360_F_568499083_q9QfafI1PkGJA8QQMIpiTT557xUUJ4Qq.jpg",
        "id": "11",
        "sounds": ['assets/audio/spring_rain.mp3']
      },
      {
        "name": "Ngày mưa",
        "image":
            "https://media.istockphoto.com/id/1257951336/photo/transparent-umbrella-under-rain-against-water-drops-splash-background-rainy-weather-concept.jpg?s=612x612&w=0&k=20&c=lNvbIw1wReb-owe7_rMgW8lZz1zElqs5BOY1AZhyRXs=",
        "id": "12",
        "sounds": ['assets/audio/spring_rain.mp3']
      }
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
          SizedBox(
            width: 100.w,
            height: 100.h,
            child: CustomScrollView(
              slivers: [
                const SliverBuilderCustom(),
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ButtonsCustom1(),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: ListViewCustom(data: data),
                      ),
                      const SizedBox(height: 40)
                    ],
                  ),
                ),
              ],
            ),
          ),
          GetBuilder<HomeController>(builder: (controller) {
            return Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed(AppRoutes.player);
                  },
                  child: miniPlayerCustom(visible: controller.showMiniPlayer),
                ));
          })
        ],
      ),
    );
  }
}
