import 'package:flutter/material.dart';
import 'package:weather_widget/utilities/constants.dart';

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/location_background.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.8), BlendMode.dstOut),
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //1st child
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FlatButton(
                    // padding: EdgeInsets.only(left: 0),
                    onPressed: () {},
                    child: Icon(
                      Icons.near_me,
                      size: 50,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    // padding: EdgeInsets.only(
                    //     left: MediaQuery.of(context).size.width -
                    //         48), //calculating the width of the total screen and subtracting the both icons width
                    child: Icon(
                      Icons.location_city,
                      size: 50,
                    ),
                  ),
                ],
              ),

              //2nd child
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Text('32°', style: kTempTextStyle
                        //TextStyle(fontSize: 60, fontWeight: FontWeight.w900),
                        ),
                    // Container(
                    //   padding: EdgeInsets.all(20),
                    // ),
                    Text(
                      '🌞',
                      style: kConditionTextStyle,
                      // TextStyle(
                      //     fontSize: 60,
                      //     fontWeight: FontWeight.w900,
                      //     color: Colors.yellow),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 15),
                child: Text(
                  'It\'s 🍦 in New Delhi!',
                  textAlign: TextAlign.right,
                  style: kMessageTextStyle,
                  //  TextStyle(
                  //   fontSize: 60,
                  // ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
