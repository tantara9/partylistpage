import 'package:flutter/material.dart';
import 'package:partylist/partyactivity/activity.dart';
import '../export.dart';

class ActivityPage extends StatefulWidget {
  ActivityPage({Key key}) : super(key: key);

  @override
  _ActivityPageState createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Slidenews(),
        Container(
          width: 200,
          height: 550,
          child: Activity(),
        )
      ],
    ));
  }
}
