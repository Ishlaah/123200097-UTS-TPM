import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Kalender extends StatefulWidget {
  const Kalender({Key? key}) : super(key: key);

  @override
  _KalenderState createState() => _KalenderState();
}

class _KalenderState extends State<Kalender> {
  // Inisialisasi zona waktu WIB
  String _zonaWaktu = "WIB";
  int _jamOffset = 0;

  // Membuat controller untuk mengatur tanggal
  TextEditingController _dateController = TextEditingController();

  // Format tanggal untuk menampilkan tanggal dengan format tertentu
  DateFormat _dateFormat = DateFormat("EEEE, dd MMMM yyyy");

  // Inisialisasi tanggal dan waktu saat ini
  DateTime _currentDate = DateTime.now();

  // Format waktu untuk menampilkan waktu dengan format tertentu
  DateFormat _timeFormat = DateFormat("HH:mm:ss");

  // Fungsi untuk mengambil zona waktu berdasarkan input dari pengguna
  void _setZonaWaktu(String zonaWaktu) {
    setState(() {
      _zonaWaktu = zonaWaktu;
      switch (zonaWaktu) {
        case "WIB":
          _jamOffset = 0;
          break;
        case "WIT":
          _jamOffset = 2;
          break;
        case "WITA":
          _jamOffset = 1;
          break;
        default:
          _jamOffset = 0;
      }
    });
  }

  // Fungsi untuk mengupdate tanggal dan waktu setiap detik
  void _updateTime() {
    setState(() {
      _currentDate = DateTime.now().add(Duration(hours: _jamOffset));
    });
  }

  @override
  void initState() {
    // Set interval untuk update waktu setiap detik
    Timer.periodic(Duration(seconds: 1), (timer) => _updateTime());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kalender'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('Zona Waktu:'),
                SizedBox(width: 16.0),
                DropdownButton<String>(
                  value: _zonaWaktu,
                  items: <String>['WIB', 'WIT', 'WITA']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? value) {
                    _setZonaWaktu(value!);
                  },
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              _dateFormat.format(_currentDate),
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _dateController,
              decoration: InputDecoration(
                hintText: 'Tanggal (dd/MM/yyyy)',
              ),
              keyboardType: TextInputType.datetime,
              onTap: () async {
// Menampilkan dialog pemilih tanggal saat TextField di-tap
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: _currentDate,
                  firstDate: DateTime(1970),
                  lastDate: DateTime(2100),
                );
                if (pickedDate != null) {
                  setState(() {
                    _currentDate = pickedDate.add(Duration(hours: _jamOffset));
                    _dateController.text = _dateFormat.format(_currentDate);
                  });
                }
              },
            ),
            SizedBox(height: 16.0),
            Text(
              _timeFormat.format(_currentDate),
              style: TextStyle(fontSize: 24.0),
            ),
          ],
        ),
      ),
    );
  }
}
