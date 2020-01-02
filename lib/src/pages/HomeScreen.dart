import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
      appBar: ResponsiveWidget.isSmallScreen(context) ||
              ResponsiveWidget.isExtraSmallScreen(context)
          ? _appBar()
          : null,
      drawer: ResponsiveWidget.isSmallScreen(context) ||
              ResponsiveWidget.isExtraSmallScreen(context)
          ? testDrawer()
          : null,
      body: ListView(
        children: <Widget>[
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Header(), Body(), Footer()]),
        ],
      ),
      floatingActionButton: ResponsiveWidget.isLargeScreen(context)
          ? _floatingActionButton(context)
          : null,
    );
  }

  FloatingActionButton _floatingActionButton(BuildContext context) {
    return FloatingActionButton(
      child: ThemeSwitcher.of(context).isDarkModeOn
          ? Icon(
              FontAwesomeIcons.lightbulb,
              color: Colors.blueGrey,
            )
          : Icon(
              FontAwesomeIcons.solidLightbulb,
              color: Colors.blue,
            ), // Dark mode is turned off
      onPressed: () => ThemeSwitcher.of(context).switchDarkMode(),
    );
  }

  AppBar _appBar() {
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

  DrawerHeader _drawerHeader() {
    return DrawerHeader(
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
              letterSpacing: 3,
            ),
          ),
        ],
      ),
    );
  }

  Drawer _drawer() {
    return Drawer(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          _drawerHeader(),
          ListTile(
            title: Text(
              'Projects',
              style: TextStyle(
                  fontSize: 18.0, fontFamily: 'Open_Sans', letterSpacing: 2),
            ),
          ),
          Container(
              // This align moves the children to the bottom
              child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  // This container holds all the children that will be aligned
                  // on the bottom and should not scroll with the above ListView
                  child: Container(
                      child: Column(
                    children: <Widget>[
                      Divider(),
                      ListTile(
                          leading: Icon(Icons.settings),
                          title: Text('Settings')),
                      ListTile(
                          leading: Icon(Icons.help),
                          title: Text('Help and Feedback'))
                    ],
                  ))))
          // Expanded( //This works
          //   child: new Align(
          //     alignment: Alignment.bottomCenter,
          //     child:
          // ListTile(
          //       leading: ThemeSwitcher.of(context).isDarkModeOn
          //           ? Icon(
          //               FontAwesomeIcons.lightbulb,
          //               color: Colors.blueGrey,
          //             )
          //           : Icon(
          //               FontAwesomeIcons.solidLightbulb,
          //               color: Colors.blue,
          //             ),
          //       onTap: () => ThemeSwitcher.of(context).switchDarkMode(),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }

  Drawer testDrawer() {
    return Drawer(
      // column holds all the widgets in the drawer
      child: Column(
        children: <Widget>[
          Expanded(
            // ListView contains a group of widgets that scroll inside the drawer
            child: ListView(
              children: <Widget>[
                _drawerHeader(),
                SizedBox(height: 40,),
                ListTile(
                  title: Text(
                    'Projects',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'Open_Sans',
                        letterSpacing: 2),
                  ),
                ),
              ],
            ),
          ),
          // This container holds the align
          Container(
            // This align moves the children to the bottom
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              // This container holds all the children that will be aligned
              // on the bottom and should not scroll with the above ListView
              child: Container(
                child: Column(
                  children: <Widget>[
                    Divider(
                      thickness: 1,
                      height: 0,
                    ),
                    ListTile(
                      // contentPadding: EdgeInsets.zero,
                      leading: ThemeSwitcher.of(context).isDarkModeOn
                          ? Icon(
                              FontAwesomeIcons.lightbulb,
                              color: Colors.blueGrey,
                            )
                          : Icon(
                              FontAwesomeIcons.solidLightbulb,
                              color: Colors.blue,
                            ),
                      onTap: () => ThemeSwitcher.of(context).switchDarkMode(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
