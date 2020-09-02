import 'package:flutter/material.dart';
import 'package:partylist/export.dart';

class PartyDetail extends StatefulWidget {
  final Mockup detail;
  PartyDetail({this.detail});

  @override
  _PartyDetailState createState() => _PartyDetailState();
}

class _PartyDetailState extends State<PartyDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.black),
            height: 180,
            child: Image.asset(
              widget.detail.imgpromote,
              fit: BoxFit.cover,
              width: 400,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 5,
                    )
                  ]),
              width: 130,
              height: 30,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Icon(
                      Icons.call_missed_outgoing,
                      color: Colors.greenAccent[400],
                    ),
                  ),
                  Container(
                    child: Text(widget.detail.popularity),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.pink[300],
                    ),
                  ),
                  Container(
                    child: Text(widget.detail.partylike),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Text(
              widget.detail.partyname,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 40),
              child: Row(
                children: <Widget>[
                  Container(
                    child:
                        Text("ผู้ก่อตั้ง : ", style: TextStyle(fontSize: 23)),
                  ),
                  Container(
                    child: Text(
                      widget.detail.partyowner,
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )),
          Padding(
            padding: EdgeInsets.all(50),
            child: Container(
              width: 300,
              height: 300,
              child: Image.asset(
                widget.detail.img,
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
