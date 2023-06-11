import 'package:flutter/material.dart';
import 'package:app/SettingsApp.dart';
import 'package:app/home.dart';

void main() {
  runApp(Ekran2());
}

class Ekran2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Katalog App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('KATALOG'),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RecipeScreen()),
                );
              },
              icon: Icon(Icons.article),
            ),
          ],
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
                    '',
                    style: TextStyle(
                      fontSize: 2,
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

class RecipeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SUPER PRZEPISY'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(21),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Oto przepis na sałatkę z awokado i mozarellą:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    '1. Pokrój pomidora, awokado i ser mozzarella na plastry.',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(height: 8),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    '2. Na talerzu ułóż rukolę i układaj na niej plasterki pomidora, awokado i mozzarelli.',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(height: 8),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    '3. Skrop wszystko oliwą z oliwek.',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(height: 8),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    '4. Dopraw solą, pieprzem i oregano.',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Center(
                child: Image.asset('images/salatka.png'),
              ),
              SizedBox(height: 16),
              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Powrót'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}