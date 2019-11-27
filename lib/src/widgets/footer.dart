import 'package:flutter/material.dart';
import 'package:portfolio/src/config/Url.dart';
import 'package:portfolio/src/config/Assets.dart';
import 'dart:html' as html;

import 'package:portfolio/src/widgets/responsive_widget.dart';

/*
TODO: Set name to smaller font for xs screens
*/
class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isExtraSmallScreen(context)
        ? extraSmallScreens()
        : normalScreens();
  }

  Widget extraSmallScreens() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: _icons(),
    );
  }

  Widget normalScreens() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: _icons(),
    );
  }

  List<Widget> _icons() {
    return [
      FlatButton.icon(
        label: Text('Github'),
        onPressed: () => html.window.open(URLs.github, 'Github'),
        icon: SizedBox(
          height: 20,
          width: 20,
          child: Image.asset(Assets.githubImage),
        ),
      ),
      FlatButton.icon(
        label: Text('Repl.it'),
        onPressed: () => html.window.open(URLs.replit, 'Repl.it'),
        icon: SizedBox(
          width: 30,
          height: 30,
          child: Image.asset(Assets.replItImage),
        ),
      ),
      FlatButton.icon(
        label: Text('LinkedIn'),
        onPressed: () => html.window.open(URLs.linkedIn, 'LinkedIn'),
        icon: SizedBox(
          height: 20,
          width: 20,
          child: Image.asset(Assets.linkedInImage),
        ),
      ),
      SizedBox(
        height: 20,
      ),
    ];
  }
}
