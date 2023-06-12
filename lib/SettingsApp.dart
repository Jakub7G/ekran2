import 'package:flutter/material.dart';
import 'home.dart';
import 'ekran_2.dart';
import 'package:provider/provider.dart';
import 'model_theme.dart';

class SettingsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ModelTheme>(
      builder: (context, themeNotifier, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text('MOTYW'),
          ),
          body: Center(
            child: IconButton(
              icon: Icon(
                themeNotifier.isDark ? Icons.nightlight_round : Icons.wb_sunny,
              ),
              onPressed: () {
                themeNotifier.isDark = !themeNotifier.isDark;
              },
            ),
          ),
          bottomNavigationBar: Container(
            color: Colors.grey[200],
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Ekran1()),
                    );
                  },
                  child: Text('1'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Ekran2()),
                    );
                  },
                  child: Text('2'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SettingsApp()),
                    );
                  },
                  child: Text('3'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
