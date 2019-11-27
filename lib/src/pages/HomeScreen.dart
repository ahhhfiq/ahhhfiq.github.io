import 'package:flutter/material.dart';
import 'package:portfolio/src/components/ThemeSwitcher.dart';
import 'package:portfolio/src/config/Assets.dart';
import 'package:portfolio/src/widgets/body.dart';
import 'package:portfolio/src/widgets/footer.dart';
import 'package:portfolio/src/widgets/header.dart';
import 'package:portfolio/src/widgets/responsive_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ResponsiveWidget.isSmallScreen(context) || ResponsiveWidget.isExtraSmallScreen(context) ? _appBar() : null,
      drawer: ResponsiveWidget.isSmallScreen(context) || ResponsiveWidget.isExtraSmallScreen(context) ? _drawer() : null,
      body: ListView(
        children: <Widget>[
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Header(), Body(), Footer()]),
        ],
      ),
      floatingActionButton: ResponsiveWidget.isLargeScreen(context)
          ? FloatingActionButton(
              child: ThemeSwitcher.of(context).isDarkModeOn
                  ? Icon(
                      Icons.wb_sunny,
                      color: Colors.white,
                    ) // Dark mode is turned on
                  : Image.asset(
                      Assets.moon,
                      height: 20,
                      width: 20,
                    ), // Dark mode is turned off
              onPressed: () => ThemeSwitcher.of(context).switchDarkMode(),
            )
          : null,
    );
  }

  Widget _appBar() {
    return AppBar(
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        },
      ),
      title: Text('UwU'),
      centerTitle: true,
    );
  }

  Widget _drawer() {
    return Drawer(
      child: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              DrawerHeader(
                padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: Image.asset(
                        Assets.portfolioImage,
                      ).image,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'My Portfolio',
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w200,
                          letterSpacing: 3),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Text(
                  'Projects',
                  style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Open_Sans',
                      letterSpacing: 2),
                ),
              ),
              ListTile(
                title: ThemeSwitcher.of(context).isDarkModeOn
                    ? Text('Turn on Light mode')
                    : Text('Turn on Dark Mode'),
                trailing: ThemeSwitcher.of(context).isDarkModeOn
                    ? Icon(
                        Icons.wb_sunny,
                        color: Colors.white,
                      ) // Dark mode is turned on
                    : Image.asset(
                        Assets.moon,
                        height: 20,
                        width: 20,
                      ),
                onTap: () => ThemeSwitcher.of(context).switchDarkMode(),
              ),
              ListTile(
                title: ThemeSwitcher.of(context).isDarkModeOn
                    ? Text('Turn on Light mode')
                    : Text('Turn on Dark Mode'),
                trailing: Switch(
                  value: ThemeSwitcher.of(context).isDarkModeOn,
                  onChanged: (bool newValue) =>
                      ThemeSwitcher.of(context).switchDarkMode(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
