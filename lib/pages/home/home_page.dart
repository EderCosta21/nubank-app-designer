import 'package:app_nuback/pages/home/widget/my_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home_page extends StatelessWidget{
@override

Widget build(BuildContext context)
{
  return Scaffold(
    backgroundColor: Colors.purple[800],
    body: Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        MyAppbar()    
      ]
    ),
  );
}

}