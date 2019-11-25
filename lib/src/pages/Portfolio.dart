import 'package:flutter/material.dart';
import 'package:portfolio/src/components/ThemeSwitcher.dart';
import 'package:portfolio/src/config/themes.dart';
import 'package:portfolio/src/pages/HomeScreen.dart';

class Portfolio extends StatefulWidget {
  @override
  _PortfolioState createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ahhhfiq | Portfolio',
      home: HomeScreen(),
      routes: <String, WidgetBuilder>{
        
      },
      theme: ThemeSwitcher.of(context).isDarkModeOn
          ? darkTheme(context)
          : lightTheme(context),
      debugShowCheckedModeBanner: false,
    );
  }
}
