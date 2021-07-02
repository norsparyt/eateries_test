import 'package:flutter/material.dart';

class AppTheme {
  ThemeData get lightThemeData {
    ThemeData _theme = ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(247, 247, 242, 1.0),
        backgroundColor: Color.fromRGBO(38, 28, 21, 1.0),
        primaryColor: Color.fromRGBO(236, 167, 44, 1.0),
        accentColor: Color.fromRGBO(242, 97, 87, 1.0),
        textTheme: TextTheme(
            //tab text
            headline1: TextStyle(
                color: Color.fromRGBO(38, 28, 21, 1.0),
                fontFamily: 'Nunito',
                fontSize: 40.0,
                fontWeight: FontWeight.bold),
            headline2: TextStyle(
              color: Color.fromRGBO(236, 167, 44, 1.0),
              fontFamily: 'Nunito',
              fontSize: 28.0,
              fontWeight: FontWeight.w300,
              letterSpacing: 2.0,
            ),
            headline3: TextStyle(
                color: Color.fromRGBO(38, 28, 21, 1.0),
                fontFamily: 'Nunito',
                fontSize: 20.0),
            headline4: TextStyle(
                color: Color.fromRGBO(38, 28, 21, 0.7),
                fontFamily: 'Nunito',
                fontSize: 30.0),
            bodyText2: TextStyle(
                color: Color.fromRGBO(38, 28, 21, 1.0),
                fontFamily: 'Nunito',
                fontSize: 20.0,
                fontWeight: FontWeight.w300),
            bodyText1: TextStyle(
                color: Color.fromRGBO(242, 97, 87, 0.9),
                fontFamily: 'Nunito',
                fontSize: 15.0,
                fontWeight: FontWeight.w300)),
        inputDecorationTheme: InputDecorationTheme(
          alignLabelWithHint: true,
          // labelStyle: TextStyle(
          //     fontFamily: 'Nunito',
          //     // color: Colors.grey.shade50,
          //     fontSize: 12.0,
          //     fontWeight: FontWeight.w600),
          hintStyle: TextStyle(
            fontFamily: 'Nunito',
            // fontWeight: FontWeight.w400,
            // color: Theme.of(context).backgroundColor.,
            // fontSize: 15.0),
            // enabledBorder: UnderlineInputBorder(
            // borderSide: BorderSide(color: Colors.grey.shade200),
          ),
        ));
    return _theme;
  }

  ThemeData get darkThemeData {
    ThemeData _theme = ThemeData(
      backgroundColor: Color.fromRGBO(247, 247, 242, 1.0),
      scaffoldBackgroundColor: Color.fromRGBO(38, 28, 21, 1.0),
      primaryColor: Color.fromRGBO(236, 167, 44, 1.0),
      accentColor: Color.fromRGBO(242, 97, 87, 1.0),
    );
    return _theme;
  }
}
