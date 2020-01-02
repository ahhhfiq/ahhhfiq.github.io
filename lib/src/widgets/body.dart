import 'package:flutter/material.dart';
import 'package:portfolio/src/widgets/responsive_widget.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          wip(),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }

  Text wip() {
    return Text(
      'WIP',
      style: TextStyle(
        fontSize: 40,
        letterSpacing: 4,
        fontWeight: FontWeight.w100,
      ),
    );
  }
}
