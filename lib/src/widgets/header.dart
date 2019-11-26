import 'package:flutter/material.dart';
import 'package:portfolio/src/config/Assets.dart';
import 'package:portfolio/src/config/Url.dart';
import 'dart:html' as html;

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}
class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 150,
                backgroundImage: Image.asset(Assets.portfolioImage).image,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Muhammad Afiq',
                textScaleFactor: 4,
                style: TextStyle(
                  letterSpacing: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(),
                child: Text(
                  'Mobile & Backend Developer',
                  style: Theme.of(context).textTheme.caption,
                  textScaleFactor: 2,
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: new TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: <TextSpan>[
                      new TextSpan(
                        text: 'Currently studying in ',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Raleway',
                        ),
                      ),
                      new TextSpan(
                        text: 'Temasek Polytechnic',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Raleway',
                          color: Color(0xFFEE3942),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
