import 'package:flutter/material.dart';
import 'package:smart_home_neomorphism_app/screens/home_screen.dart';
import 'package:smart_home_neomorphism_app/screens/temperature_screen.dart';
import 'package:smart_home_neomorphism_app/theme/style.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      // home: TemperatureScreen(),
      home: HomeScreen(),
    );
  }
}
