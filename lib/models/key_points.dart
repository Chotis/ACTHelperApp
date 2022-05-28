class KeyPoints {
  String? point;

  KeyPoints({this.point});

  KeyPoints.fromJson(Map<String, dynamic> json) {
    point = json['point'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['point'] = this.point;
    return data;
  }
}
