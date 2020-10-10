class ScreenInfo {
  double width;
  double height;

  ScreenInfo(this.width, this.height);
}

class roomInfo {
  String roomcode;
  String imageSelf;
  String itImage;
  roomInfo(this.roomcode, this.imageSelf, this.itImage);
}

class QueueObj {
  String id;
  String url;
  QueueObj(this.id, this.url);

  QueueObj.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        url = json['url'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'url': url,
      };
}

class Result {
  Self self;
  Self it;
  String roomcode;

  Result({this.self, this.it, this.roomcode});

  Result.fromJson(Map<String, dynamic> json) {
    self = json['self'] != null ? new Self.fromJson(json['self']) : null;
    it = json['it'] != null ? new Self.fromJson(json['it']) : null;
    roomcode = json['roomcode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.self != null) {
      data['self'] = this.self.toJson();
    }
    if (this.it != null) {
      data['it'] = this.it.toJson();
    }
    data['roomcode'] = this.roomcode;
    return data;
  }
}

class Self {
  String id;
  String url;

  Self({this.id, this.url});

  Self.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['url'] = this.url;
    return data;
  }
}
