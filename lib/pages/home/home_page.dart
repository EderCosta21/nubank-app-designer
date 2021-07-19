import 'package:app_nuback/pages/home/widget/my_app_bar.dart';
import 'package:app_nuback/pages/home/widget/my_dots_app.dart';
import 'package:app_nuback/pages/home/widget/page_view_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: camel_case_types
class Home_page extends StatefulWidget {
  @override
  _Home_pageState createState() => _Home_pageState();
}

// ignore: camel_case_types
class _Home_pageState extends State<Home_page> {
  bool _showMenu;
  double _yPosition;
  int _currentIndex;

  @override
  void initState() {
    super.initState();
    _showMenu = false;
    _currentIndex = 0;
    _yPosition = 0;
  }

  @override
  Widget build(BuildContext context) {
    double _screenHeigth = MediaQuery.of(context).size.height;

    if (_yPosition == null) {
      _yPosition = 1 * .24;
    }

    return Scaffold(
      backgroundColor: Colors.purple[800],
      body: Stack(alignment: Alignment.topCenter, children: <Widget>[
        MyAppBar(
          showMenu: _showMenu,
          onTap: () {
            setState(() {
              _showMenu = !_showMenu;
              _yPosition = _showMenu ? 1 * .75 : 1 * .24;
            });
          },
        ),
        PageViewApp(
          top:
              _yPosition, //!_showMenu ? _screenHeigth * .24 : _screenHeigth * .75,
          onChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          onPanUpdate: (details) {
            setState(() {
              _yPosition += details.delta.dy;
            });
          },
        ),
        MyDotsApp(
          top: _screenHeigth * .70,
          currentIndex: _currentIndex,
        )
      ]),
    );
  }
}
