import 'package:flutter/material.dart';

class TemeratureView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Temperature',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Lorem ipsum is simply dummy',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              Spacer(),
              Text(
                '20 C',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w300),
              )
            ],
          ),
          Expanded(
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    color: Colors.green,
                    height: 80.0,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.orange,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
