import 'package:get/get.dart';
import 'package:sleepsounds/src/modules/explore_sound/explore_sound_controller.dart';


class ExploreSoundBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExploreSoundController>(
          () => ExploreSoundController(),
    );
  }
}
