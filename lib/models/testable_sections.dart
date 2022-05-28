import 'sub_sections.dart';

class TestableSections {
  String? sectionTitle;
  List<SubSections>? subSections;

  TestableSections({this.sectionTitle, this.subSections});

  TestableSections.fromJson(Map<String, dynamic> json) {
    sectionTitle = json['sectionTitle'];
    if (json['subSections'] != null) {
      subSections = <SubSections>[];
      json['subSections'].forEach((v) {
        subSections!.add(new SubSections.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sectionTitle'] = this.sectionTitle;
    if (this.subSections != null) {
      data['subSections'] = this.subSections!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
