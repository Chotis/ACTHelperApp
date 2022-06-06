import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:expandable/expandable.dart';

var decodedJson;
Map<String, dynamic> content = {};

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //get json from assets, decode and add to map
  final String response =
      await rootBundle.loadString('assets/testDataFiles/testData.json');
  decodedJson = await jsonDecode(response);
  content = decodedJson;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String _title = 'Australian Citizenship Test Prep';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: _title),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var data;

  // Fetch content from the json file
  void ImNotSure() {
    setState(() {
      data = "what";
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.portrait_outlined)),
                Tab(icon: Icon(Icons.self_improvement_outlined)),
                Tab(icon: Icon(Icons.account_balance_outlined)),
                Tab(icon: Icon(Icons.yard_outlined)),
              ],
            ),
          ),
          body: Container(
            child: TabBarView(
              children: [
                FirstTabContent(),
                FirstTabContent(),
                FirstTabContent(),
                FirstTabContent(),
              ],
            ),
          )),
    );
  }
}

class FirstTabContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: ListView(padding: const EdgeInsets.all(10), children: [
      Center(
        child: Padding(
            padding: EdgeInsets.all(20),
            child: Text(content['testableSections'][0]['sectionTitle'],
                style: DefaultTextStyle.of(context)
                    .style
                    .apply(fontSizeDelta: 10, fontWeightDelta: 10))),
      ),
      FirstTabContentFirstSection(),
      FirstTabContentSecondSection(),
      FirstTabContentThirdSection(),
      FirstTabContentFourthSection(),
      FirstTabContentFifthSection(),
      FirstTabContentSixthSection(),
      FirstTabContentSeventhSection(),
      FirstTabContentEighthSection(),
      FirstTabContentNinthSection()
    ]));
  }
}

class FirstTabContentFirstSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 5,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue.shade200,
                  shape: BoxShape.rectangle,
                ),
              ),
            ),
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                theme: const ExpandableThemeData(
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      content['testableSections'][0]['subSections'][0]
                          ['subSectionTitle'],
                      style: Theme.of(context).textTheme.bodyLarge,
                    )),
                collapsed: Text(
                  content['testableSections'][0]['subSections'][0]['keyPoints']
                      [0]['point'],
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                expanded: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          content['testableSections'][0]['subSections'][0]
                              ['keyPoints'][0]['point'],
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        )),
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          content['testableSections'][0]['subSections'][0]
                              ['keyPoints'][1]['point'],
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        )),
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          content['testableSections'][0]['subSections'][0]
                              ['keyPoints'][2]['point'],
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        )),
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          content['testableSections'][0]['subSections'][0]
                              ['keyPoints'][3]['point'],
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        )),
                  ],
                ),
                builder: (_, collapsed, expanded) {
                  return Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Expandable(
                      collapsed: collapsed,
                      expanded: expanded,
                      theme: const ExpandableThemeData(crossFadePoint: 0),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class FirstTabContentSecondSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 5,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue.shade200,
                  shape: BoxShape.rectangle,
                ),
              ),
            ),
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                theme: const ExpandableThemeData(
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      content['testableSections'][0]['subSections'][1]
                          ['subSectionTitle'],
                      style: Theme.of(context).textTheme.bodyLarge,
                    )),
                collapsed: Text(
                  content['testableSections'][0]['subSections'][1]['keyPoints']
                      [0]['point'],
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                expanded: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          content['testableSections'][0]['subSections'][1]
                              ['keyPoints'][0]['point'],
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        )),
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          content['testableSections'][0]['subSections'][1]
                              ['keyPoints'][1]['point'],
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        )),
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          content['testableSections'][0]['subSections'][1]
                              ['keyPoints'][2]['point'],
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        )),
                  ],
                ),
                builder: (_, collapsed, expanded) {
                  return Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Expandable(
                      collapsed: collapsed,
                      expanded: expanded,
                      theme: const ExpandableThemeData(crossFadePoint: 0),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class FirstTabContentThirdSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 5,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue.shade200,
                  shape: BoxShape.rectangle,
                ),
              ),
            ),
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                theme: const ExpandableThemeData(
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      content['testableSections'][0]['subSections'][1]
                          ['subSectionTitle'],
                      style: Theme.of(context).textTheme.bodyLarge,
                    )),
                collapsed: Text(
                  content['testableSections'][0]['subSections'][1]['keyPoints']
                      [0]['point'],
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                expanded: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          content['testableSections'][0]['subSections'][1]
                              ['keyPoints'][0]['point'],
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        )),
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          content['testableSections'][0]['subSections'][1]
                              ['keyPoints'][1]['point'],
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        )),
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          content['testableSections'][0]['subSections'][1]
                              ['keyPoints'][2]['point'],
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        )),
                  ],
                ),
                builder: (_, collapsed, expanded) {
                  return Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Expandable(
                      collapsed: collapsed,
                      expanded: expanded,
                      theme: const ExpandableThemeData(crossFadePoint: 0),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class FirstTabContentFourthSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 5,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue.shade200,
                  shape: BoxShape.rectangle,
                ),
              ),
            ),
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                theme: const ExpandableThemeData(
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      content['testableSections'][0]['subSections'][1]
                          ['subSectionTitle'],
                      style: Theme.of(context).textTheme.bodyLarge,
                    )),
                collapsed: Text(
                  content['testableSections'][0]['subSections'][1]['keyPoints']
                      [0]['point'],
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                expanded: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          content['testableSections'][0]['subSections'][1]
                              ['keyPoints'][0]['point'],
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        )),
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          content['testableSections'][0]['subSections'][1]
                              ['keyPoints'][1]['point'],
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        )),
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          content['testableSections'][0]['subSections'][1]
                              ['keyPoints'][2]['point'],
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        )),
                  ],
                ),
                builder: (_, collapsed, expanded) {
                  return Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Expandable(
                      collapsed: collapsed,
                      expanded: expanded,
                      theme: const ExpandableThemeData(crossFadePoint: 0),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class FirstTabContentFifthSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 5,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue.shade200,
                  shape: BoxShape.rectangle,
                ),
              ),
            ),
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                theme: const ExpandableThemeData(
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      content['testableSections'][0]['subSections'][1]
                          ['subSectionTitle'],
                      style: Theme.of(context).textTheme.bodyLarge,
                    )),
                collapsed: Text(
                  content['testableSections'][0]['subSections'][1]['keyPoints']
                      [0]['point'],
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                expanded: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          content['testableSections'][0]['subSections'][1]
                              ['keyPoints'][0]['point'],
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        )),
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          content['testableSections'][0]['subSections'][1]
                              ['keyPoints'][1]['point'],
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        )),
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          content['testableSections'][0]['subSections'][1]
                              ['keyPoints'][2]['point'],
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        )),
                  ],
                ),
                builder: (_, collapsed, expanded) {
                  return Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Expandable(
                      collapsed: collapsed,
                      expanded: expanded,
                      theme: const ExpandableThemeData(crossFadePoint: 0),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class FirstTabContentSixthSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 5,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue.shade200,
                  shape: BoxShape.rectangle,
                ),
              ),
            ),
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                theme: const ExpandableThemeData(
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      content['testableSections'][0]['subSections'][1]
                          ['subSectionTitle'],
                      style: Theme.of(context).textTheme.bodyLarge,
                    )),
                collapsed: Text(
                  content['testableSections'][0]['subSections'][1]['keyPoints']
                      [0]['point'],
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                expanded: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          content['testableSections'][0]['subSections'][1]
                              ['keyPoints'][0]['point'],
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        )),
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          content['testableSections'][0]['subSections'][1]
                              ['keyPoints'][1]['point'],
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        )),
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          content['testableSections'][0]['subSections'][1]
                              ['keyPoints'][2]['point'],
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        )),
                  ],
                ),
                builder: (_, collapsed, expanded) {
                  return Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Expandable(
                      collapsed: collapsed,
                      expanded: expanded,
                      theme: const ExpandableThemeData(crossFadePoint: 0),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class FirstTabContentSeventhSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 5,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue.shade200,
                  shape: BoxShape.rectangle,
                ),
              ),
            ),
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                theme: const ExpandableThemeData(
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      content['testableSections'][0]['subSections'][1]
                          ['subSectionTitle'],
                      style: Theme.of(context).textTheme.bodyLarge,
                    )),
                collapsed: Text(
                  content['testableSections'][0]['subSections'][1]['keyPoints']
                      [0]['point'],
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                expanded: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          content['testableSections'][0]['subSections'][1]
                              ['keyPoints'][0]['point'],
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        )),
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          content['testableSections'][0]['subSections'][1]
                              ['keyPoints'][1]['point'],
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        )),
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          content['testableSections'][0]['subSections'][1]
                              ['keyPoints'][2]['point'],
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        )),
                  ],
                ),
                builder: (_, collapsed, expanded) {
                  return Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Expandable(
                      collapsed: collapsed,
                      expanded: expanded,
                      theme: const ExpandableThemeData(crossFadePoint: 0),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class FirstTabContentEighthSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 5,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue.shade200,
                  shape: BoxShape.rectangle,
                ),
              ),
            ),
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                theme: const ExpandableThemeData(
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      content['testableSections'][0]['subSections'][1]
                          ['subSectionTitle'],
                      style: Theme.of(context).textTheme.bodyLarge,
                    )),
                collapsed: Text(
                  content['testableSections'][0]['subSections'][1]['keyPoints']
                      [0]['point'],
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                expanded: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          content['testableSections'][0]['subSections'][1]
                              ['keyPoints'][0]['point'],
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        )),
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          content['testableSections'][0]['subSections'][1]
                              ['keyPoints'][1]['point'],
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        )),
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          content['testableSections'][0]['subSections'][1]
                              ['keyPoints'][2]['point'],
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        )),
                  ],
                ),
                builder: (_, collapsed, expanded) {
                  return Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Expandable(
                      collapsed: collapsed,
                      expanded: expanded,
                      theme: const ExpandableThemeData(crossFadePoint: 0),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class FirstTabContentNinthSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 5,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue.shade200,
                  shape: BoxShape.rectangle,
                ),
              ),
            ),
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                theme: const ExpandableThemeData(
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      content['testableSections'][0]['subSections'][1]
                          ['subSectionTitle'],
                      style: Theme.of(context).textTheme.bodyLarge,
                    )),
                collapsed: Text(
                  content['testableSections'][0]['subSections'][1]['keyPoints']
                      [0]['point'],
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                expanded: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          content['testableSections'][0]['subSections'][1]
                              ['keyPoints'][0]['point'],
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        )),
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          content['testableSections'][0]['subSections'][1]
                              ['keyPoints'][1]['point'],
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        )),
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          content['testableSections'][0]['subSections'][1]
                              ['keyPoints'][2]['point'],
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        )),
                  ],
                ),
                builder: (_, collapsed, expanded) {
                  return Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Expandable(
                      collapsed: collapsed,
                      expanded: expanded,
                      theme: const ExpandableThemeData(crossFadePoint: 0),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
