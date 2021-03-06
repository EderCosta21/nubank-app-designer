import 'package:flutter/material.dart';

import 'card_app.dart';

class PageViewApp extends StatelessWidget {
  final double top;
  final ValueChanged<int> onChanged;
  final GestureDragUpdateCallback onPanUpdate;

  const PageViewApp({Key key, this.top, this.onChanged, this.onPanUpdate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeOut,
      top: top,
      height: MediaQuery.of(context).size.height * .45,
      left: 0,
      right: 0,
      child: SizedBox(
        // height: _screenHeigth * 0.3,
        child: GestureDetector(
          onPanUpdate: onPanUpdate,
          child: PageView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              CardApp(),
              CardApp(),
              CardApp(),
            ],
          ),
        ),
      ),
    );
  }
}
