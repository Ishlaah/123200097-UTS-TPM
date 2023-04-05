import 'package:flutter/material.dart';
import 'package:utstpm/bangundatar/bangundatar.dart';
import 'package:utstpm/datadiri/datadiri.dart';
import 'package:utstpm/kalender/kalender.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentIndex = 0;
  final screens = [
    BangunDatar(),
    Kalender(),
    DataDiri(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Selamat Datang, Ishlaah!"),
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.date_range),
            label: 'Kalender',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Data Diri',
          ),
        ],
      ),
    );
  }
}
