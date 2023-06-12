import 'package:flutter/material.dart';
import 'package:app/home.dart';
import 'package:app/ekran_2.dart';
import 'package:app/SettingsApp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Super Przepisy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Ekran1(),
      routes: {
        '/ekran1': (context) => Ekran1(),
        '/ekran2': (context) => Ekran2(),
        '/settings': (context) => SettingsApp(),
      },
    );
  }
}

//class Settings {bool isDarkMode;Settings({this.isDarkMode = false});}