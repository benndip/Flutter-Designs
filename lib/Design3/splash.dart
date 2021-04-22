import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      height: deviceHeight,
      width: double.infinity,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: deviceHeight,
                width: double.infinity,
                color: Colors.indigo,
              ),
              Positioned(
                top: -80,
                right: -90,
                child: Image.asset('assets/images/goodFood-removebg-preview.png'),
                width: 300,
                height: 300
              ),
              Positioned(
                bottom: 150,
                left: 10,
                child: Container(
                  width: deviceWidth * 0.85,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Food',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                          ),
                          Text(
                            ' you love,',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w100,
                              fontSize: 30,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'delivered',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w100,
                              fontSize: 30,
                            ),
                          ),
                          Text(
                            ' to you',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 10,
                        ),
                        child: Text(
                          'This is some veru very good food right now please go and bring some for me ooooh ',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 30,
                left: 10,
                right: 10,
                child: Container(
                  width: deviceWidth * 0.85,
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 1,
                            width: 24,
                            color: Colors.white,
                            margin: EdgeInsets.only(right: 5),
                          ),
                          Container(
                            height: 1,
                            width: 14,
                            color: Colors.white24,
                            margin: EdgeInsets.only(right: 5),
                          ),
                          Container(
                            height: 1,
                            width: 14,
                            color: Colors.white24,
                            margin: EdgeInsets.only(right: 5),
                          ),
                        ],
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                        color: Colors.red,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.chevron_right,
                                color: Colors.white24,
                                size: 15
                              ),
                               Icon(
                                Icons.chevron_right,
                                color: Colors.white,
                                size: 20
                              ),
                            ],
                          ),
                        )
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
