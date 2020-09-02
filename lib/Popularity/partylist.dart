import 'package:flutter/material.dart';
import 'package:partylist/partydetail/partydetail.dart';

class Partylist extends StatefulWidget {
  Partylist({Key key}) : super(key: key);

  @override
  _PartylistState createState() => _PartylistState();
}

class _PartylistState extends State<Partylist> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: List.generate(
            mockup.length,
            (index) => Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  PartyDetail(detail: mockup[index])));
                    },
                    child: Padding(
                      padding: EdgeInsets.all(13),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.deepPurple[300],
                        ),

                        height: 160,
                        // width: 200,
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: Container(
                                width: 200,
                                height: 200,
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                        child: Text(
                                      mockup[index].partyname,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    )),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Container(
                                        child: Text(
                                          mockup[index].partydetail,
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Container(
                                        child: Text(
                                          mockup[index].partypolicy,
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 45),
                                      child: Row(
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 10,
                                            ),
                                            child: Container(
                                              child: Icon(
                                                Icons.call_missed_outgoing,
                                                color: Colors.greenAccent[400],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                              mockup[index].popularity,
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.white),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 15),
                                            child: Container(
                                              child: Icon(
                                                Icons.favorite,
                                                color: Colors.pink[300],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                              mockup[index].partylike,
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.white),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: Container(
                                width: 145,
                                height: 200,
                                color: Colors.black,
                                child: Image.asset(
                                  mockup[index].img,
                                  // 'assets/image/party/1.png',
                                  fit: BoxFit.cover,
                                  // width: 145,
                                  // height: 200,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )),
      ),
    );
  }
}

class Mockup {
  final String partyname;
  final String partydetail;
  final String partypolicy;
  final String popularity;
  final String partylike;
  final String img;
  final String imgpromote;
  final String partyowner;
  const Mockup(
      {this.partyname,
      this.partydetail,
      this.partypolicy,
      this.partylike,
      this.popularity,
      this.img,
      this.imgpromote,
      this.partyowner});
}

List<Mockup> mockup = const <Mockup>[
  const Mockup(
      partyname: 'พรรคก้าวไกล',
      partydetail: 'testdetail',
      partypolicy: 'testpolicy',
      popularity: '4.5%',
      partylike: '30k',
      img: 'assets/image/party/1.png',
      imgpromote: 'assets/image/partydetail/1.jpg',
      partyowner: 'พิธา ลิ้มเจริญรัตน์'),
  const Mockup(
      partyname: 'พรรคเพื่อไทย',
      partydetail: 'testdetail',
      partypolicy: 'testpolicy',
      popularity: '4.5%',
      partylike: '30k',
      img: 'assets/image/party/2.jpg',
      imgpromote: 'assets/image/partydetail/3.jpg',
      partyowner: 'ทักษิณ ชินวัตร'),
  const Mockup(
      partyname: 'พรรคพลังประชารัฐ',
      partydetail: 'testdetail',
      partypolicy: 'testpolicy',
      popularity: '4.5%',
      partylike: '30k',
      img: 'assets/image/party/3.jpg',
      imgpromote: 'assets/image/partydetail/2.jpg',
      partyowner: 'ประยุทธ์ จันทร์โอชา'),
  const Mockup(
      partyname: 'พรรคประชาธิปปัตย์',
      partydetail: 'testdetail',
      partypolicy: 'testpolicy',
      popularity: '4.5%',
      partylike: '30k',
      img: 'assets/image/party/4.jpg',
      imgpromote: 'assets/image/partydetail/4.jpg',
      partyowner: 'ควง อภัยวงศ์'),
  const Mockup(
      partyname: 'พรรคเศรษฐกิจใหม่',
      partydetail: 'testdetail',
      partypolicy: 'testpolicy',
      popularity: '4.5%',
      partylike: '30k',
      img: 'assets/image/party/5.png',
      imgpromote: 'assets/image/partydetail/5.jpg',
      partyowner: 'สุภดิช อากาศฤกษ์'),
];
