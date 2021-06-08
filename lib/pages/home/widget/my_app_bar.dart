import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyAppbar extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: MediaQuery.of(context).padding.top,
        ),
        Container(
          height: 150,
          color: Colors.purple[800],
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/nubank-logo.png',
                      height: 30,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text('Nubank',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                  ],
                ),
                Icon(Icons.expand_more)
              ]),
        )
      ],
    );
  }
}
