import 'package:flutter/material.dart';

import './timeAndAmount.dart';

class StationDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          width: deviceWidth,
          padding: EdgeInsets.only(left: 50, right: 50, top: 20),
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
                        'S ation 2',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          letterSpacing: 0.9
                          // fontFamily: ''
                        ),
                      ),
                      Positioned(
                        left: 14,
                        child: Text(
                          't',
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
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TimeAndAmount(
                      topText: '1 hour',
                      amount: 1000,
                      color: Color.fromRGBO(255, 159, 67, 0.4),
                    ),
                    TimeAndAmount(
                      topText: '2 hours',
                      amount: 1000,
                      color: Color.fromRGBO(72, 219, 251, 0.4),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TimeAndAmount(
                      topText: '1 hour',
                      amount: 1000,
                      color: Color.fromRGBO(255, 121, 121, 0.4),
                    ),
                    TimeAndAmount(
                      topText: 'FIFA',
                      amount: 1000,
                      color: Color.fromRGBO(186, 220, 88, 0.4),
                    )
                  ],
                ),
                SizedBox(height: 40),
                Center(
                  child: Icon(
                    Icons.close_rounded,
                    color: Color.fromRGBO(250, 152, 58,1.0),
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
