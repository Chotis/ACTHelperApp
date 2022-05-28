import 'key_points.dart';

class SubSections {
  String? subSectionTitle;
  List<KeyPoints>? keyPoints;

  SubSections({this.subSectionTitle, this.keyPoints});

  SubSections.fromJson(Map<String, dynamic> json) {
    subSectionTitle = json['subSectionTitle'];
    if (json['keyPoints'] != null) {
      keyPoints = <KeyPoints>[];
      json['keyPoints'].forEach((v) {
        keyPoints!.add(new KeyPoints.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['subSectionTitle'] = this.subSectionTitle;
    if (this.keyPoints != null) {
      data['keyPoints'] = this.keyPoints!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
