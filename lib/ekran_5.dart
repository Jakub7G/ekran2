import 'package:app/katalog.dart';
import 'package:flutter/material.dart';
import 'package:app/SettingsApp.dart';
import 'package:app/home.dart';
import 'package:provider/provider.dart';
import 'model_theme.dart';

class Ekran5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ModelTheme>(builder: (context, themeNotifier, child) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('KATALOG'),
          automaticallyImplyLeading: false, // Dodana właściwość
          backgroundColor: themeNotifier.isDark
              ? Colors.black
              : Colors.orange[100], // Ustawienie koloru tła paska nawigacji
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
                Image.asset('images/warzywa.png', width: double.infinity),
                SizedBox(height: 16),
                Center(
                  child: Text(
                    'Warzywa na patelne',
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
                      'Porcja 300g = 590 kcal',
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
                Text(
                  'Przepis krok po kroku:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  '1. Warzywa gotuj przez 1 minutę. Po gotowaniu odcedź i zachowaj 3-5 łyżek wody z gotowania. ',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 8),
                Text(
                  '2. Na patelni rozpuść tłuszcz i podsmaż warzywa. ',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 8),
                Text(
                  '3. SDodaj wodę z gotowania oraz zawartość opakowania sosu Knorr. ',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 8),
                Text(
                  '4. Wszystko dokładnie wymieszaj, dopraw ziołami prowansalskimi i smaż przez ok. 2 minuty. Podawaj natychmiast po przygotowaniu. Tak przygotowane warzywa doskonale smakują samodzielnie lub z ryżem. ',
                  style: TextStyle(fontSize: 16),
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
                  MaterialPageRoute(builder: (context) => Katalog()),
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
          backgroundColor:
          themeNotifier.isDark ? Colors.black : Colors.orange[100],
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
          _buildTableRow('Marchew', '2x sztuka (200g)'),
          _buildTableRow('Brokuł', '1x (150g)'),
          _buildTableRow('Ziemniaki', '3x sztuka (300g)'),
          _buildTableRow('Olej słonecznikowy', '4x łyżka (100g)'),
          _buildTableRow('Papryka', '2x sztuka (120g)'),
          _buildTableRow('Fasola szparagowa', '0,5x opakowania (150g)'),
          _buildTableRow('Cebula', '1,5x sztuka (150g)'),
          _buildTableRow('Kukurydza', '1x sztuka (130g)'),
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