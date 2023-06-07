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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 0.5),
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
                  padding: EdgeInsets.symmetric(horizontal: 76),
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(20),
                    color: Colors.lightBlue[100],
                    child: Text(
                      'Porcja 269g = 394 kcal',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),

                SizedBox(height: 16),
                CatalogTable(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildBottomNavItem('1', Colors.blue),
              _buildBottomNavItem('2', Colors.blue),
              _buildBottomNavItem('3', Colors.blue),
              _buildBottomNavItem('4', Colors.blue),
            ],
          ),
        ),
      ),
    );
  }
}

class CatalogTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
        color: Colors.lightBlue[100],
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTableRow('Pomidor', '10 x plaster (200g)'),
          _buildTableRow('Awokado', '1 x sztuka (140g)'),
          _buildTableRow('Ser Mozzarella', '1 x opakowanie (125g)'),
          _buildTableRow('Rukola', '0,5 x opakowanie (50g)'),
          _buildTableRow('Oliwa z oliwek', '2 x łyżka (20g)'),
          _buildTableRow('Sól biała', '1 x szczypta (1g)'),
          _buildTableRow('Oregano suszone', '1 x szczypta (1g)'),
          _buildTableRow('Pieprz czarny', '1 x szczypta (1g)'),
        ],
      ),
    );
  }

  Widget _buildTableRow(String name, String description) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Expanded(
            child: Text(
              name,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ),
          Text(
            description,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildBottomNavItem(String label, Color color) {
  return Expanded(
    child: Container(
      height: 60,
      color: color,
      child: Center(
        child: Text(
          label,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    ),
  );
}