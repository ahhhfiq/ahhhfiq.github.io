import 'package:flutter/material.dart';
import 'package:portfolio/src/components/ThemeSwitcher.dart';
import 'package:portfolio/src/config/Assets.dart';
import 'package:portfolio/src/config/Url.dart';
import 'dart:html' as html;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: ThemeSwitcher.of(context).isDarkModeOn
                ? Icon(
                    Icons.wb_sunny,
                    color: Colors.white,
                  )
                : Image.asset(
                    Assets.moon,
                    height: 20,
                    width: 20,
                  ),
            onPressed: () => ThemeSwitcher.of(context).switchDarkMode(),
          )
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
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
                  Text(
                    'Mobile & Backend Developer',
                    style: Theme.of(context).textTheme.caption,
                    textScaleFactor: 2,
                    textAlign: TextAlign.center,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      FlatButton.icon(
                        label: Text('Github'),
                        onPressed: () =>
                            html.window.open(URLs.github, 'Github'),
                        icon: SizedBox(
                          height: 20,
                          width: 20,
                          child: Image.asset(Assets.githubImage),
                        ),
                      ),
                      FlatButton.icon(
                        label: Text('Repl.it'),
                        onPressed: () =>
                            html.window.open(URLs.replit, 'Repl.it'),
                        icon: SizedBox(
                          width: 30,
                          height: 30,
                          child: Image.asset(Assets.replItImage),
                        ),
                      ),
                      FlatButton.icon(
                        label: Text('LinkedIn'),
                        onPressed: () =>
                            html.window.open(URLs.linkedIn, 'LinkedIn'),
                        icon: SizedBox(
                          height: 20,
                          width: 20,
                          child: Image.asset(Assets.linkedInImage),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  // Container(
                  //   decoration: BoxDecoration(
                  //     boxShadow: [
                  //       BoxShadow(
                  //         color: Colors.blue.withOpacity(0.2),
                  //         blurRadius: 30.0,
                  //         spreadRadius: 0.5,
                  //         offset: Offset(0, 5),
                  //       ),
                  //     ],
                  //   ),
                  //   child: RaisedButton(
                  //     child: Text(
                  //       'View my projects',
                  //       textAlign: TextAlign.center,
                  //       style: ThemeSwitcher.of(context).isDarkModeOn
                  //           ? TextStyle(
                  //               fontSize: 15,
                  //               color: Colors.white,
                  //             ) //Dark Theme
                  //           : TextStyle(
                  //               fontSize: 15,
                  //               color: Colors.grey[200],
                  //             ), //Light Theme
                  //     ),
                  //     onPressed: () => print('Uwu')
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
