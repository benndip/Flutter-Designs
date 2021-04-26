import 'package:Designs/Design5/animation.dart';
import 'package:flutter/material.dart';

import './stationCard.dart';
import './timeAndRevenue.dart';

class FindStation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          width: deviceWidth,
          padding: EdgeInsets.only(left: 40, right: 40, top: 20),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(Icons.menu, size: 30),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.only(left: 5),
                  child: Stack(
                    children: <Widget>[
                      Text(
                        'F nd Station',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          // fontFamily: ''
                        ),
                      ),
                      Positioned(
                        left: 11.5,
                        child: Text(
                          'i',
                          style: TextStyle(
                            color: Colors.amber,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            // fontFamily: ''
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                StationCard(
                  text: 'assign',
                  stationNumber: 1,
                  stationType: 'VACCANT',
                  backgroundColor: Colors.white,
                  textColor: Color.fromRGBO(29, 209, 161, 1.0),
                ),
                SizedBox(height: 20),
                StationCard(
                  text: '3hr 32mins',
                  stationNumber: 2,
                  stationType: 'OCCUPIED',
                  backgroundColor: Colors.transparent,
                  textColor: Colors.red,
                ),
                SizedBox(height: 20),
                StationCard(
                  text: '0hr 53mins',
                  stationNumber: 3,
                  stationType: 'OCCUPIED',
                  backgroundColor: Colors.transparent,
                  textColor: Colors.red,
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TimeAndRevenue(
                        topText: 'Time',
                        bottomText: '6hrs 14min',
                      ),
                      TimeAndRevenue(
                        topText: 'Revenue',
                        bottomText: '30 Billion',
                        image: true,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(220, 221, 225, 1.0),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Text('Countdown'),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  AnimationContainer(),
                                  SizedBox(width: 10),
                                  Text(
                                    '4:39',
                                    style: TextStyle(
                                      color: Color.fromRGBO(238, 82, 83, 1.0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              'recharge',
                              style: TextStyle(
                                color: Color.fromRGBO(238, 82, 83, 1.0),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
