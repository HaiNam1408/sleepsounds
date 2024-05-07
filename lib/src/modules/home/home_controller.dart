import 'package:get/get.dart';

class HomeController extends GetxController {
  bool _showMiniPlayer = false;
  bool _isPlaying = true;

  bool get showMiniPlayer => _showMiniPlayer;
  bool get isPlaying => _isPlaying;
  // Thêm phương thức toggleMiniPlayer() vào HomeController
  void toggleMiniPlayer(bool value) {
    _showMiniPlayer = value;
    update();
  }

  void updatePlaying() {
    _isPlaying =! _isPlaying;
    update();
  }
}
