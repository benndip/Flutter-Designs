import 'package:flutter/material.dart';

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
                      'assets/images/download.png',
                      width: 50,
                      height: 50,
                    )
                  : null),
          Text(bottomText),
        ],
      ),
    );
  }
}
