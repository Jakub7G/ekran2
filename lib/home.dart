import 'package:flutter/material.dart';
import 'ekran_2.dart';
import 'SettingsApp.dart';
import 'model_theme.dart';
import 'package:provider/provider.dart';

class Ekran1 extends StatefulWidget {
  @override
  _Ekran1State createState() => _Ekran1State();
}

class _Ekran1State extends State<Ekran1> with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  bool _isHovered = false;
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: 2.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _startHoverAnimation() {
    _animationController.forward();
  }

  void _endHoverAnimation() {
    _animationController.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ModelTheme>(builder: (context, themeNotifier, child) {
      Color appBarColor = themeNotifier.isDark ? Colors.black : Colors.blue;

      return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text(
            'SUPER PRZEPISY',
            style: TextStyle(fontSize: 20),
          ),
          actions: [
            // Dodaj swoje widżety akcji tutaj
          ],
          backgroundColor: appBarColor,
        ),
        body: Column(
          children: [
            const Align(
              alignment: Alignment.center,
              child: Image(
                image: AssetImage('images/logo.png'),
                height: 100,
              ),
            ),
            const Text(
              'Gotuj zdrowo i smacznie!',
              style: TextStyle(fontSize: 25),
            ),
            const SizedBox(
              height: 90,
            ),
            const Align(
              child: Image(
                image: AssetImage('images/fotofood.png'),
              ),
            ),
          ],
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
          currentIndex: 0,
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
                  MaterialPageRoute(builder: (context) => Ekran2()),
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
          backgroundColor: appBarColor,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          iconSize: 34,
        ),
      );
    });
  }
}
