import 'package:flutter/material.dart';
import 'export.dart';

class PopularityPage extends StatefulWidget {
  PopularityPage({Key key}) : super(key: key);

  @override
  _PopularityPageState createState() => _PopularityPageState();
}

class _PopularityPageState extends State<PopularityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Slidenews(),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "กระแสข่าวพรรคการเมือง",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            width: 200,
            height: 500,
            child: Partylist(),
          )
        ],
      ),
    );
  }
}
