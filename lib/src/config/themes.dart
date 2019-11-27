import 'package:flutter/material.dart';

darkTheme(context) {
  return ThemeData(
    fontFamily: 'Raleway',
    primarySwatch: Colors.blue,
    primaryColor: Colors.black,
    accentColor: Colors.blue,
    disabledColor: Colors.grey,
    cardColor: Color(0xff1f2124),
    canvasColor: Colors.black,
    brightness: Brightness.dark,
    buttonTheme: Theme.of(context).buttonTheme.copyWith(
          colorScheme: ColorScheme.dark(),
          buttonColor: Colors.blue,
          splashColor: Colors.black,
          hoverColor: Colors.white12
        ),
    appBarTheme: AppBarTheme(
      elevation: 0.0,
    ),
    floatingActionButtonTheme: Theme.of(context).floatingActionButtonTheme.copyWith(
      backgroundColor: Colors.black,
      splashColor: Colors.white30,
      elevation: 0,
      hoverElevation: 0,
      disabledElevation: 0,
      highlightElevation: 0,
      focusElevation: 0, 
    )
  );
}

lightTheme(context) {
  return ThemeData(
    fontFamily: 'Raleway',
    primarySwatch: Colors.blue,
    primaryColor: Colors.white,
    accentColor: Colors.blue,
    disabledColor: Colors.grey,
    cardColor: Colors.white,
    canvasColor: Colors.white,
    brightness: Brightness.light,
    backgroundColor: Colors.grey[100],
    buttonTheme: Theme.of(context).buttonTheme.copyWith(
        colorScheme: ColorScheme.light(),
        buttonColor: Colors.blue,
        splashColor: Colors.white),
    appBarTheme: AppBarTheme(
      elevation: 0.0,
    ),
    floatingActionButtonTheme: Theme.of(context).floatingActionButtonTheme.copyWith(
      backgroundColor: Colors.white,
      splashColor: Colors.black45,
      elevation: 0,
      hoverElevation: 0,
      disabledElevation: 0,
      highlightElevation: 0,
      focusElevation: 0,  
    )
  );
}
