class Sound {
  String? name;
  String? image;
  String? id;
  List<String>? sounds;

  Sound({this.name, this.image, this.id, this.sounds});

  Sound.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
    id = json['id'];
    sounds = json['sounds'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['image'] = image;
    data['id'] = id;
    data['sounds'] = sounds;
    return data;
  }
}
