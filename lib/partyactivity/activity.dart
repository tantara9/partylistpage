import 'package:flutter/material.dart';

class Activity extends StatefulWidget {
  Activity({Key key}) : super(key: key);

  @override
  _ActivityState createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: List.generate(
            mockup.length,
            (index) => Padding(
                  padding:
                      EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 15),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.lightBlue[100],
                    ),
                    height: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blueAccent),
                          ),
                          height: 150,
                          child: Image.asset(
                            mockup[index].acimg,
                            fit: BoxFit.cover,
                            width: 335,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 13, top: 5, bottom: 5),
                          child: Text(
                            mockup[index].acdate,
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {},
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: 13, top: 5, bottom: 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  width: 220,
                                  height: 50,
                                  child: Center(
                                    child: Text(
                                      'รายละเอียดกิจกรรม',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: 20, right: 20, top: 5, bottom: 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  width: 55,
                                  height: 50,
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.pinkAccent,
                                    size: 40,
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )),
      ),
    );
  }
}

class Mockup {
  final String acimg;
  final String acdate;

  const Mockup({this.acimg, this.acdate});
}

List<Mockup> mockup = const <Mockup>[
  const Mockup(
    acimg: 'assets/image/activity/1.jpg',
    acdate: 'Date : 5/08/2020',
  ),
  const Mockup(
    acimg: 'assets/image/activity/2.jpg',
    acdate: 'Date : 15/08/2020',
  ),
  const Mockup(
    acimg: 'assets/image/activity/1.jpg',
    acdate: 'Date : 23/08/2020',
  ),
  const Mockup(
    acimg: 'assets/image/activity/3.jpg',
    acdate: 'Date : 31/08/2020',
  )
];
