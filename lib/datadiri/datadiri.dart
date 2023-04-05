import 'package:flutter/material.dart';

class DataDiri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/ishlaah.jpeg',
              width: 380,
              height: 280,
            ),
            SizedBox(height: 16.0),
            Text(
              'Nama: Muhammad Nur Ishlaahudin Sya Bani',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'NIM: 123200097',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Kelas: IF-D',
              style: TextStyle(fontSize: 24.0),
            ),
            Text(
              'Tempat dan Tanggal Lahir: Purworejo, 31 Oktober 20001',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Harapan/Cita-cita: Bisa menjadi Software Enginer yang mahir',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}
