import 'package:flutter/material.dart';
//import 'package:weather_widget/screens/city_screen.dart';
import 'package:weather_widget/screens/loading_screen.dart';
//import 'package:weather_widget/screens/location_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: LoadingScreen() //Location(), //CityScreen(), //,
        );
  }
}
