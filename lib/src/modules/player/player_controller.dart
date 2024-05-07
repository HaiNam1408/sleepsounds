import 'dart:async';

import 'package:get/get.dart';
import 'package:sleepsounds/src/services/audio_handler/audio_handler.dart';

class PlayerController extends GetxController {
  final arguments = Get.arguments;
  late final String name;
  final RxList<String> sounds = [''].obs;
  final RxBool isPlaying = true.obs;
  late Timer timer;
  final RxInt secondsLeft = (60 * 60).obs;
  final RxBool isShowTimer = true.obs;
  final Rx<DateTime> selectedTime = DateTime(0, 0, 0, 0, 30).obs;

  @override
  void onInit() {
    name = arguments['name'];
    sounds.value = arguments['sounds'];
    startTimer();
    playSound();
    super.onInit();
  }

  @override
  void onClose() {
    AudioHandler().disposeSounds();
    super.onClose();
  }

  void changeSelectedTime(DateTime time) {
    selectedTime.value = time;
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (secondsLeft.value > 0) {
        secondsLeft.value--;
      } else {
        timer.cancel();
        isPlaying.value = false;
        AudioHandler().pauseSounds();
      }
    });
  }

  void changeSecondsLeft(int value) {
    secondsLeft.value = value;
    if (value == 0) {
      stopTimer();
      isShowTimer.value = false;
    } else if (isShowTimer.value == false) {
      isShowTimer.value = true;
    }
  }

  void customSecondsLeft() {
    int hour = selectedTime.value.hour;
    int minute = selectedTime.value.minute;
    int newSecondLeft = (hour * 60 * 60 + minute * 60) - 1;
    changeSecondsLeft(newSecondLeft);
    Get.back();
    Get.back();
  }

  void stopTimer() {
    timer.cancel();
  }

  String formatTime(int seconds) {
    final hours = seconds ~/ 3600;
    final minutes = (seconds ~/ 60) % 60;
    final secondsRemaining = seconds % 60;
    if (hours > 0) {
      return '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${secondsRemaining.toString().padLeft(2, '0')}';
    } else {
      return '${minutes.toString().padLeft(2, '0')}:${secondsRemaining.toString().padLeft(2, '0')}';
    }
  }

  Future<void> playSound() async {
    for (int i = 0; i < sounds.length; i++) {
      await AudioHandler().addPlayer(sounds[i]);
    }
    await AudioHandler().playSounds();
  }

  Future<void> resumeSound() async {
    isPlaying.value = !isPlaying.value;
    if (isPlaying.value) {
      startTimer();
      await AudioHandler().playSounds();
    } else {
      stopTimer();
      await AudioHandler().pauseSounds();
    }
  }
}
