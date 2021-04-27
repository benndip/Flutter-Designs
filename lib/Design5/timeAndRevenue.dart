import 'package:flutter/material.dart';

import './animation.dart';
import 'countDownTimer.dart';

class TimeAndRevenue extends StatelessWidget {
  final String topText;
  final String bottomText;
  final bool image;

  TimeAndRevenue({this.topText, this.bottomText, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        color: Color.fromRGBO(220, 221, 225, 1.0),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(topText),
          Container(
            child: image == true
                ? Image.asset(
                    'assets/images/icons8-get-revenue-48.png',
                    width: 80,
                    height: 70,
                    filterQuality: FilterQuality.high,
                  )
                : Stack(
                    children: [
                      AnimationContainer(),
                      Positioned(
                        top: 12.5,
                        left: 13.5,
                        child: Icon(
                          Icons.access_time_sharp,
                        ),
                      )
                    ],
                  ),
          ),
          image == true
              ? Text(bottomText)
              : CountDownTimer(
                  secondsRemaining: 25000,
                  //  whenTimeExpires: () {
                  //     setState(() {
                  //       hasTimerStopped = true;
                  //     });
                  //   },
                  countDownTimerStyle: TextStyle(
                    color: Color(0XFFf5a623),
                    fontSize: 17.0,
                    height: 1.2,
                  ),
                ),
        ],
      ),
    );
  }
}
