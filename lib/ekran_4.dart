import 'package:flutter/material.dart';
import 'package:app/SettingsApp.dart';
import 'package:app/home.dart';
import 'package:provider/provider.dart';
import 'model_theme.dart';

class Ekran4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ModelTheme>(builder: (context, themeNotifier, child) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('KATALOG PRZEPISÓW'),
          automaticallyImplyLeading: false, // Dodana właściwość
          backgroundColor: themeNotifier.isDark
              ? Colors.black
              : Colors.blue, // Ustawienie koloru tła paska nawigacji
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
                SizedBox(height: 1),
                Image.asset('images/spaghetti.png'),
                SizedBox(height: 16),
                Center(
                  child: Text(
                    'Makaron Spaghetti',
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
                      'Porcja 200g = 214 kcal',
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
                SizedBox(height: 16),
                Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RecipeScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlue, // Ustawienie koloru przycisku
                    ),
                    child: Text('Zobacz przepis'),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.receipt),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: '',
            ),
          ],
          currentIndex: 1,
          onTap: (index) {
            switch (index) {
              case 0:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Ekran1()),
                );
                break;
              case 1:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Ekran4()),
                );
                break;
              case 2:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsApp()),
                );
                break;
            }
          },
          backgroundColor: themeNotifier.isDark
              ? Colors.black
              : Colors.blue, // Ustawienie koloru tła paska nawigacji
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          iconSize: 34,
        ),
      );
    });
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
          _buildTableRow('Makaron Spaghetti', '200g'),
          _buildTableRow('Mięso mielone wołowe', '500g'),
          _buildTableRow('Cebula', '1 sztuka (100g)'),
          _buildTableRow('Czosnek', '2 ząbki (10g)'),
          _buildTableRow('Przecier pomidorowy', '400g'),
          _buildTableRow('Oliwa z oliwek', '2 łyżki (30ml)'),
          _buildTableRow('Bazylia', '1 łyżeczka (5g)'),
          _buildTableRow('Parmezan', '30g'),
        ],
      ),
    );
  }

  Widget _buildTableRow(String name, String quantity) {
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
            quantity,
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
        centerTitle: true,
        title: Text('SUPER PRZEPISY'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(21),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Oto przepis na spaghetti:',
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
                    '1. Gotuj makaron spaghetti zgodnie z instrukcjami na opakowaniu.',
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
                    '2. Na patelni rozgrzej oliwę z oliwek, dodaj posiekany czosnek i cebulę, smaż przez kilka minut aż będą miękkie i lekko zrumienione.',
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
                    '3. Dodaj mięso mielone i smaż, mieszając, aż będzie dobrze podsmażone.',
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
                    '4. Dodaj przecier pomidorowy i bazylię, gotuj na małym ogniu przez około 10 minut, aż sos się zagotuje i zgęstnieje.',
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
                    '5. Podawaj makaron z sosem i posyp parmezanem.',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Center(
                child: Image.asset('images/spaghetti2.png'),
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