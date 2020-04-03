import 'package:flutter/material.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Home',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Lorem Ipsum is',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[800],
                ),
              )
            ],
          ),
          Spacer(),
          Stack(
            children: <Widget>[
              ClipOval(
              child: Image.asset(
                'assets/images/elon.jpg',
                height: 50.0,
                width: 50.0,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              right: 3.0,
              child: ClipOval(
                child: Container(
                  color: Colors.red,
                  height: 15.0,
                  width: 15.0,
                  child: Center(child: Text('3', style: TextStyle(color: Colors.white),)),
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
