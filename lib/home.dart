import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sirespi/makanan.dart';
import 'package:sirespi/notivikasi.dart';
import 'package:sirespi/resep.dart';
import 'package:sirespi/sigin.dart';
import 'package:sirespi/signUp.dart';
import 'package:sirespi/tampilanProfil.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        builder: (context, child) {
          return Directionality(
              textDirection: TextDirection.ltr, child: child!);
        },
        title: 'GNav',
        theme: ThemeData(
          primaryColor: Colors.grey[800],
        ),
        home: const Example());
  }
}

class Example extends StatefulWidget {
  const Example({Key? key}) : super(key: key);

  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    makanan(),
    resep(),
    notivikasi(),
    tampilanProfil(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(title: const Text('hallo')),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: const Color.fromARGB(255, 251, 188, 5),
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.grey[500],
              tabs: const [
                GButton(
                  icon: Icons.shopping_cart_rounded,
                  text: 'Belanja',
                ),
                GButton(
                  icon: Icons.article_rounded ,
                  text: 'Resep',
                ),
                GButton(
                  icon: Icons.notifications_active_rounded,
                  text: 'Notiv',
                ),
                GButton(
                  icon: Icons.account_circle_rounded,
                  text: 'Profil',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
