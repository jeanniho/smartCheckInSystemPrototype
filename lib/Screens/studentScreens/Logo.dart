import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  BuildContext context;
  Logo({this.context});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.5,
          height: MediaQuery.of(context).size.height * 0.14,
        ),
        Positioned(
          left: 70.0,
          child: Icon(
            Icons.location_on,
            size: 25,
            color: Colors.blue,
          ),
        ),
        Positioned(
          top: 5.0,
          left: 60,
          child: Icon(
            Icons.done,
            size: 50,
            color: Colors.blue,
          ),
        ),
        Positioned(
            top: 60.0,
            child: Text(
              "SmartCheckIn",
              style: TextStyle(
                letterSpacing: 2,
                fontSize: 26,
              ),
            ))
      ],
    );
  }
}
