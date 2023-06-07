import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Katalog App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Katalog'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            Center(
              child: Text(
                'Katalog',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Image.asset('images/obraz.png'),
            SizedBox(height: 16),
            Center(
              child: Text(
                'Sałatka z awokado i mozarellą',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(30),
                color: Colors.lightBlue[100],
                child: Text(
                  'Porcja 269g  =  394 kcal',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 56),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(30),
                color: Colors.lightBlue[100],
                child: Text(
                  'Pomidor  -  10 x plaster (200g)',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(8),
                color: Colors.lightBlue[100],
                child: Text(
                  '21',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
