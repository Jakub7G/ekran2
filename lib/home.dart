import 'package:flutter/material.dart';
import 'ekran_2.dart';
import 'SettingsApp.dart';


class Ekran1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'SUPER PRZEPISY',
          style: TextStyle(fontSize: 35),
        ),
        actions: [
          // Add your action widgets here
        ],
      ),
      body: Column(
        children: [
          const Align(
            alignment: Alignment.center,
            child: Image(
              image: AssetImage('images/ufolud.png'),
              height: 100,
            ),
          ),
          const Text(
            'Zdjęcia poglądowe',
            style: TextStyle(fontSize: 30, backgroundColor: Colors.lightBlue),
          ),
          const SizedBox(
            height: 6,
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
    );
  }
}
