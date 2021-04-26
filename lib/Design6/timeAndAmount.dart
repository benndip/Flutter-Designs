import 'package:flutter/material.dart';

class TimeAndAmount extends StatelessWidget {
  final String topText;
  final int amount;
  final Color color;
  TimeAndAmount({this.topText, this.amount, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      margin: EdgeInsets.only(top: 20),
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  topText,
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                ),
                Text(
                  '$amount frs',
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 3,
            right: 3,
            child: Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
          )
        ],
      ),
    );
  }
}
