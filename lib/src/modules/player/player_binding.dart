import 'package:get/get.dart';
import 'package:sleepsounds/src/modules/player/player_controller.dart';

class PlayerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PlayerController>(
          () => PlayerController(),
    );
  }
}
