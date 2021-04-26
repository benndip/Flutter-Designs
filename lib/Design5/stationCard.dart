import 'package:flutter/material.dart';

class StationCard extends StatelessWidget {
  final int stationNumber;
  final String stationType;
  final Color backgroundColor;
  final String text;
  final Color textColor;

  StationCard({
    this.stationNumber,
    this.stationType,
    this.backgroundColor,
    this.textColor,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 5, right: 5),
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
        color: Color.fromRGBO(220, 221, 225, 1.0),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Station $stationNumber:'),
          Text(stationType),
          Container(
            padding: EdgeInsets.only(left: 5, right: 5),
            width: 75,
            height: 25,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
