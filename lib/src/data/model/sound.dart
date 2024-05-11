class Sound {
  int? id;
  String? name;
  String? icon;
  String? sound;

  Sound({this.id, this.name, this.icon, this.sound});

  Sound.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    icon = json['icon'];
    sound = json['sound'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['icon'] = icon;
    data['sound'] = sound;
    return data;
  }
}
