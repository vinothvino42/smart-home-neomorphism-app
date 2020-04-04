import 'package:flutter/material.dart';
import 'package:smart_home_neomorphism_app/components/menu_view.dart';

class TemperatureScreen extends StatelessWidget {
  final List<IconData> icons = [
    Icons.settings,
    Icons.person,
    Icons.ac_unit,
    Icons.notifications_none,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Temperature',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        'Lorem ipsum is simply dummy',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.blueGrey[400],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: _buildTemperatureMenu(context),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          child: Container(
                            margin: const EdgeInsets.symmetric(vertical: 10.0),
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            decoration: _getBoxDecoration(context),
                            child: _buildTemperatureContainer(context),
                            width: 70.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      4,
                      (index) => MenuWidget(
                        imageIcon: icons[index],
                        selected: (index == 1) ? true : false,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Column _buildTemperatureMenu(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    '25°',
                    style: TextStyle(
                      fontSize: 65.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.blueGrey[400],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      'C',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueGrey[400],
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.wb_sunny,
                    color: Colors.blueGrey[400],
                  ),
                  SizedBox(width: 4.0),
                  Text(
                    '32°C Outside',
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.blueGrey[400],
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: 50.0),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Container(
                        width: 100.0,
                        height: 100.0,
                        padding: const EdgeInsets.all(10.0),
                        decoration: _getBoxDecoration(context,
                            borderRadius: 50.0, pressed: true),
                        child: Icon(
                          Icons.power,
                          size: 35.0,
                          color: Colors.blueGrey[400],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.ac_unit,
                            size: 30.0,
                            color: Colors.blueGrey[400],
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'Cooling mode',
                            style: TextStyle(
                              color: Colors.blueGrey[400],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Container(
                        height: 100.0,
                        width: 130.0,
                        decoration:
                            _getBoxDecoration(context, borderRadius: 15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Icon(
                              Icons.timer,
                              size: 30.0,
                              color: Colors.blueGrey[400],
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              'Set Timer',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.blueGrey[400],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.flash_on,
                            size: 30.0,
                            color: Colors.blueGrey[400],
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'Turbo mode',
                            style: TextStyle(
                              color: Colors.blueGrey[400],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      );

  Container _buildTemperatureContainer(BuildContext context) => Container(
        margin: const EdgeInsets.symmetric(vertical: 5.0),
        decoration: _getBoxDecoration(context, pressed: true),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  children: List.generate(
                      6,
                      (index) => Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 15.0, horizontal: 5.0),
                            height: 0.2,
                            color: Colors.blueGrey,
                          )),
                ),
              ),
              SizedBox(height: 12.0),
              ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25.0),
                  bottomRight: Radius.circular(25.0),
                ),
                child: Container(
                  height: 260.0,
                  color: Colors.pinkAccent[700],
                ),
              ),
              SizedBox(height: 4.0),
            ],
          ),
        ),
      );

  BoxDecoration _getBoxDecoration(BuildContext context,
          {pressed = false, borderRadius = 30.0}) =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: Theme.of(context).primaryColor,
        boxShadow: [
          BoxShadow(
            offset: pressed ? Offset(-3, -3) : Offset(3, 3),
            color: Colors.black12,
            blurRadius: 3,
          ),
          BoxShadow(
            offset: pressed ? Offset(3, 3) : Offset(-3, -3),
            color: Colors.white,
            blurRadius: 3,
          ),
        ],
      );
}
