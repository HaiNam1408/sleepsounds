import 'package:get/get.dart';

class OptionSoundController extends GetxController {
  final arguments = Get.arguments;
  RxList<Map<String, dynamic>> listSound = <Map<String, dynamic>>[].obs;
  RxList<String> list = [''].obs;
  late List<Map<String, dynamic>> data;

  @override
  void onInit() {
    list = arguments?['sounds'] ?? [''];
    print(list.toString());
    data = [
      {
        "id": 1,
        "name": "Mưa rơi",
        "icon": "assets/player_screen/rain.png",
        "sound": "assets/audio/spring_rain.mp3"
      },
      {
        "id": 2,
        "name": "Sấm",
        "icon": "assets/player_screen/thunder.png",
        "sound": "assets/audio/thunder.mp3"
      },
      {
        "id": 3,
        "name": "Gió",
        "icon": "assets/player_screen/wind.png",
        "sound": "assets/audio/wind.mp3"
      },
      {
        "id": 4,
        "name": "Mưa trên lá",
        "icon": "assets/player_screen/leaf.png",
        "sound": "assets/audio/left_rain.mp3"
      },
      {
        "id": 5,
        "name": "Mưa chớp",
        "icon": "assets/player_screen/thunderstorm.png",
        "sound": "assets/audio/thunder_rain.mp3"
      },
      {
        "id": 6,
        "name": "Piano",
        "icon": "assets/player_screen/piano.png",
        "sound": "assets/audio/piano.mp3"
      },
      {
        "id": 7,
        "name": "Lửa",
        "icon": "assets/player_screen/fire.png",
        "sound": "assets/audio/fire.mp3"
      },
      {
        "id": 8,
        "name": "Đêm khuya",
        "icon": "assets/player_screen/night-mode.png",
        "sound": "assets/audio/night.mp3"
      },
      {
        "id": 9,
        "name": "Tiếng cóc",
        "icon": "assets/player_screen/frog.png",
        "sound": "assets/audio/frog.mp3"
      },
    ];
    setListSound(list);
    ever(list, (callback) => setListSound(list));
    super.onInit();
  }

  void setListSound(List<String> list) {
    for (var i = 0; i < data.length; i++) {
      for (var j = 0; j < list.length; j++) {
        if (data[i]['sound'] == list[j] && !listSound.contains(data[i])) {
          listSound.add(data[i]);
        }
      }
    }
  }

  void changeListSound(String sound) {
    if (list.contains(sound)) {
      list.remove(sound);
    } else {
      list.add(sound);
    }
  }
}
