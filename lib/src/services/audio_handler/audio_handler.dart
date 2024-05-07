import 'package:just_audio/just_audio.dart';

class AudioHandler {
  static final AudioHandler _instance = AudioHandler._internal();

  factory AudioHandler() {
    return _instance;
  }

  AudioHandler._internal();

  final List<AudioPlayer> players = [];

  Future<void> addPlayer(String path) async {
    final player = AudioPlayer();
    await player.setAsset(path);
    players.add(player);
  }

  Future<void> playSounds() async {
    for (AudioPlayer player in players) {
      await player.play();
    }
  }

  Future<void> pauseSounds() async {
    for (AudioPlayer player in players) {
      await player.pause();
    }
  }

  Future<void> stopSounds() async {
    for (AudioPlayer player in players) {
      await player.stop();
    }
  }

  Future<void> disposeSounds() async {
    for (AudioPlayer player in players) {
      await player.dispose();
    }
    players.clear();
  }
}
