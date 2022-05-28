import 'testable_sections.dart';

class TestableContent {
  List<TestableSections>? testableSections;

  TestableContent({this.testableSections});

  TestableContent.fromJson(Map<String, dynamic> json) {
    if (json['testableSections'] != null) {
      testableSections = <TestableSections>[];
      json['testableSections'].forEach((v) {
        testableSections!.add(new TestableSections.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.testableSections != null) {
      data['testableSections'] =
          this.testableSections!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
