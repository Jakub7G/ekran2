import 'package:app/katalog.dart';
import 'package:flutter/material.dart';
import 'package:app/SettingsApp.dart';
import 'package:app/home.dart';
import 'package:provider/provider.dart';
import 'model_theme.dart';

class Ekran6 extends StatelessWidget {
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
                Image.asset('images/hamburger.png'),
                SizedBox(height: 16),
                Center(
                  child: Text(
                    'Burger wołowy',
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
                SizedBox(height: 16),
                Text(
                  'Przepis:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  '1. Wołowinę razem z łojem zmielić na grubych oczkach maszyny do mielenia mięsa.',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 8),
                Text(
                  '2. Mięso razem z Przyprawą do grilla Knorr wyrób ręką i uformuj okrągłe hamburgery o masie około 120 g. Hamburgery powinny mieć średnicę co najmniej 10 cm i być grube na około 2 cm.',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 8),
                Text(
                  '3. Burgery wrzuć bezpośrednio na dobrze rozgrzany ruszt grillowy. Grilluj około 15 minut, w zależności od stopnia wysmażenia. ',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 8),
                Text(
                  '4. W międzyczasie przygotuj bułki: przekrój je na pół, opiecz na grillu i posmaruj z obu stron sosem Hellmanns. Na górną część bułki ułóż liść sałaty lodowej, plaster cebuli i gruby plaster pomidora. ',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 8),
                Text(
                  '5. Na dolną część bułki połóż zgrillowanego burgera z serem i przykryj go dwoma plastrami chrupiącego boczku. Kanapkę przykryj górną częścią bułki z sałatą, cebulą i pomidorem. Żeby kanapka się nie rozpadła, przekłuj ją wykałaczką z korniszonem i oliwką. ',
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