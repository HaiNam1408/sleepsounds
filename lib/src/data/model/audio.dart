import 'package:sleepsounds/src/data/model/sound.dart';

class Audio {
  int? id;
  String? name;
  String? image;
  List<Sound>? sounds;

  Audio({this.id, this.name, this.image, this.sounds});

  Audio.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    if (json['sounds'] != null) {
      sounds = <Sound>[];
      json['sounds'].forEach((v) {
        sounds!.add(Sound.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['image'] = image;
    if (sounds != null) {
      data['sounds'] = sounds!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
