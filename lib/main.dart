import 'package:app/ekran_5.dart';
import 'package:app/ekran_6.dart';
import 'package:flutter/material.dart';
import 'package:app/home.dart';
import 'package:app/ekran_2.dart';
import 'package:app/SettingsApp.dart';
import 'package:provider/provider.dart';
import 'model_theme.dart';
import 'ekran_4.dart';
import 'ekran_3.dart';
import 'katalog.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ModelTheme(),
      child: Consumer<ModelTheme>(
        builder: (context, themeNotifier, child) {
          return MaterialApp(
            title: 'Super Przepisy',
            theme: themeNotifier.isDark
                ? ThemeData(brightness: Brightness.dark)
                : ThemeData(
                    brightness: Brightness.light,
                    primaryColor: Colors.greenAccent,
                    primarySwatch: Colors.blue,
                  ),
            debugShowCheckedModeBanner: false,
            home: Ekran1(),
            routes: {
              '/ekran1': (context) => Ekran1(),
              '/ekran2': (context) => Ekran2(),
              '/settings': (context) => SettingsApp(),
              '/ekran3': (context) => Ekran3(),
              '/ekran4': (context) => Ekran4(),
              '/katalog': (context) => Katalog(),
              '/ekran5': (context) => Ekran5(),
              '/ekran6': (context) => Ekran6(),
            },
          );
        },
      ),
    );
  }
}
