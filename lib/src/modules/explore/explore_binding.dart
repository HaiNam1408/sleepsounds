import 'package:get/get.dart';
import 'package:sleepsounds/src/modules/explore/explore_controller.dart';

class ExploreBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExploreController>(
      () => ExploreController(),
    );
  }
}
