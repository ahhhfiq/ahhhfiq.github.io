import 'package:flutter/material.dart';
import 'package:portfolio/src/config/Assets.dart';
import 'dart:html' as html;

import 'package:portfolio/src/config/Url.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
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
      ],
    );
  }
}
