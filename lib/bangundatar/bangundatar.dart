import 'package:flutter/material.dart';
import 'package:utstpm/bangundatar/tabung.dart';
import 'package:utstpm/bangundatar/trapesium.dart';

class TrapesiumMenu extends StatelessWidget {
  const TrapesiumMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Trapesium()));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.crop_square),
            SizedBox(height: 10),
            Text(
              'Trapesium',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TabungMenu extends StatelessWidget {
  const TabungMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Tabung()));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.circle),
            SizedBox(height: 10),
            Text(
              'Tabung',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BangunDatar extends StatelessWidget {
  const BangunDatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Bangun datar dan Bangun Ruang'),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Center(
          child: GridView.count(
            crossAxisCount: 2,
            children: [
              TrapesiumMenu(),
              TabungMenu(),
            ],
          ),
        ),
      ),
    );
  }
}
