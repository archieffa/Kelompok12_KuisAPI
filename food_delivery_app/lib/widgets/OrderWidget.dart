import 'package:flutter/material.dart';

class OrderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 15, top: 20),
          alignment: Alignment.centerLeft,
          child: Text(
            "Fill Order Details",
            style: TextStyle(
              fontSize: 22,
              color: Color(0xFF475269),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 15, top: 20),
          
        ),
      ],
    );
  }
}