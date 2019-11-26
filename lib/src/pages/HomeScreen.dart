import 'package:flutter/material.dart';
import 'package:portfolio/src/components/ThemeSwitcher.dart';
import 'package:portfolio/src/config/Assets.dart';
import 'package:portfolio/src/widgets/body.dart';
import 'package:portfolio/src/widgets/footer.dart';
import 'package:portfolio/src/widgets/header.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: ListView(
        children: <Widget>[
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Header(), Body(), Footer()]),
        ],
      ),
    );
  }

  Widget _appBar() {
    return AppBar(
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
    );
  }

  Widget _drawer() {
    
  }
}
