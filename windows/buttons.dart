import 'package:flutter/material.dart';
import 'package:app/ekran_2.dart';
import 'package:app/settings_app.dart';


class ButtonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FirstScreen(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
            ),
            child: Text('1'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondScreen(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
            ),
            child: Text('2'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ThirdScreen(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
            ),
            child: Text('3'),
          ),
        ],
      ),
    );
  }
}

ThirdScreen() {
}

FirstScreen() {
}