import 'package:flutter/material.dart';
import 'package:portfolio/src/components/ThemeSwitcher.dart';
import 'package:portfolio/src/pages/Portfolio.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeSwitcherWidget(
      initialDarkModeOn: true,
      child: Portfolio(),
    );
  }
}