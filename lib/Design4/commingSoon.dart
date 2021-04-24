import 'package:flutter/material.dart';

class CommingSoon extends StatefulWidget {
  @override
  _CommingSoonState createState() => _CommingSoonState();
}

class _CommingSoonState extends State<CommingSoon> {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(0),
        width: deviceWidth,
        child: Column(
          children: [
            Container(
              height: deviceHeight * 0.5,
              child: Stack(
                children: [
                  Positioned(
                    right: 0,
                    child: Image.asset(
                      'assets/images/fishermansdiary1.jpg',
                      height: deviceHeight * 0.50,
                    ),
                  ),
                  Positioned(
                    top: 30,
                    left: 20,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Container(
                        height: 60,
                        width: deviceWidth * 0.71,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/icons8-star-filled-48.png',
                                    width: 15,
                                    height: 15,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: 3,
                                    ),
                                    child: Text(
                                      '4.8',
                                      style: TextStyle(
                                          color: Colors.white70, fontSize: 12),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/icons8-happy-48.png',
                                    width: 15,
                                    height: 15,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 3),
                                    child: Text(
                                      '2020',
                                      style: TextStyle(
                                          color: Colors.white70, fontSize: 10),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/icons8-time-machine-50.png',
                                    width: 15,
                                    height: 15,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 3),
                                    child: Text(
                                      '2h 23mins',
                                      style: TextStyle(
                                          color: Colors.white70, fontSize: 12),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            RotatedBox(
                              quarterTurns: 1,
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.black87,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                      width: 0.3, color: Colors.grey),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.chevron_left,
                                    color: Colors.white70,
                                    size: 35,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 30,
                    right: 40,
                    child: Icon(
                      Icons.videocam_outlined,
                      size: 35,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  width: deviceWidth,
                  padding: EdgeInsets.all(25),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Fisherman\'s Diary',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 27,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Enah Johnscott',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                height: 25,
                                padding: EdgeInsets.all(5),
                                child: Center(
                                  child: Text(
                                    'Educational',
                                    style: TextStyle(
                                      color: Colors.white60,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                  border: Border.all(
                                      width: 0.4, color: Colors.grey),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                padding: EdgeInsets.all(5),
                                height: 25,
                                // width: 70,
                                child: Center(
                                  child: Text(
                                    'Drama',
                                    style: TextStyle(
                                      color: Colors.white60,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                  border: Border.all(
                                      width: 0.4, color: Colors.grey),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                padding: EdgeInsets.all(5),
                                height: 25,
                                // width: 70,
                                child: Center(
                                  child: Text(
                                    'African',
                                    style: TextStyle(
                                      color: Colors.white60,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                  border: Border.all(
                                    width: 0.4,
                                    color: Colors.grey,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: deviceWidth * 0.50,
                            height: 0.2,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Introduction',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: deviceWidth * 0.50,
                            child: Stack(
                              children: [
                                Text(
                                  'A 12-year-old girl fights to go to school in a village where female education is considered taboo.Ekah is determined to go to school in a village of fishermen where a girl child\'s education is considered a taboo. Her drive to break this old adage gets her embroiled with her father, Solomon\'s past.',
                                  style: TextStyle(
                                    color: Colors.white60,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: 35,
                                  child: Text(
                                    'Read more...',
                                    style: TextStyle(
                                      color: Color.fromRGBO(255, 19, 4, 1),
                                      fontSize: 12
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 30,
                  top: 30,
                  child: Container(
                    padding: EdgeInsets.only(
                      top: 5,
                    ),
                    width: 50,
                    height: deviceHeight * 0.35,
                    child: Column(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.keyboard_arrow_up_outlined,
                              color: Colors.grey,
                              size: 20,
                            ),
                            Icon(
                              Icons.keyboard_arrow_up_outlined,
                              color: Colors.grey[800],
                              size: 20,
                            ),
                            Icon(
                              Icons.keyboard_arrow_up_outlined,
                              color: Colors.grey[900],
                              size: 20,
                            ),
                          ],
                        ),
                        Container(
                          height: 100,
                          margin: EdgeInsets.only(top: 43),
                          width: double.infinity,
                          child: RotatedBox(
                            quarterTurns: 1,
                            child: Center(
                              child: Text(
                                'BOOK NOW',
                                style: TextStyle(
                                    color: Colors.white60,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 0.4,
                            ),
                            color: Color.fromRGBO(255, 19, 4, 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 0.4,
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              padding: EdgeInsets.only(
                left: 25,
              ),
              child: Row(
                children: [
                  Text(
                    'Cast',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(
                right: 20,
                left: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(
                          'assets/images/nojan-namdar-dUtizJyby4E-unsplash.jpg',
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Emilia',
                        style: TextStyle(
                          color: Color.fromRGBO(255, 19, 4, .7),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(
                          'assets/images/matheus-ferrero-W7b3eDUb_2I-unsplash.jpg',
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Pearl',
                        style: TextStyle(
                          color: Color.fromRGBO(255, 19, 4, .7),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(
                          'assets/images/oladimeji-odunsi-aU_eOcelLhQ-unsplash.jpg',
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Princess',
                        style: TextStyle(
                          color: Color.fromRGBO(255, 19, 4, .7),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(
                          'assets/images/sam-burriss-jTSf1xnsoCs-unsplash.jpg',
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Stacy',
                        style: TextStyle(
                          color: Color.fromRGBO(255, 19, 4, .7),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
