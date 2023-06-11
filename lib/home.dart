import 'package:flutter/material.dart';
import 'ekran_2.dart';
import 'SettingsApp.dart';

void main() {
  runApp(Ekran1());
}

class Ekran1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Katalog App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'SUPER PRZEPISY',
            style: TextStyle(fontSize: 35),
          ),
        ),
        body: Column(
          children: [
            const Align(
              alignment: Alignment.center, // Align the image to the center
              child: Image(
                image: AssetImage('images/ufolud.png'),
                height: 100,
              ),
            ),
            const Text(
              'Zdjęcia poglądowe',
              style: TextStyle(fontSize: 30, backgroundColor: Colors.lightBlue),
            ),
            const Text(
              '',
              style: TextStyle(height: 6),
            ),
            const Align(
              child: Image(
                image: AssetImage('images/fotofood.png'),
              ),
            ),

            Spacer(),
            Padding(
              padding: const EdgeInsets.all(16.0),
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
          ],
        ),
      ),
    );
  }
}

