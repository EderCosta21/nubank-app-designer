import 'package:app_nuback/pages/home/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // desativar debug superior
      debugShowCheckedModeBanner: false,
      title: 'Nubank designer',
      theme: ThemeData(
        // deixa app dark 
        brightness: Brightness.dark,
        // cor tema base
        primarySwatch: Colors.purple,
      ),
      home: Home_page(),
    );
  }
}
