import 'package:flutter/material.dart';

class LuasPermukaanTabungPage extends StatefulWidget {
  @override
  _LuasPermukaanTabungPageState createState() =>
      _LuasPermukaanTabungPageState();
}

class _LuasPermukaanTabungPageState extends State<LuasPermukaanTabungPage> {
  final _formKey = GlobalKey<FormState>();
  final _jarijariController = TextEditingController();
  final _tinggiController = TextEditingController();
  static const phi = 2.14;
  double _luas = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Luas Permukaan Tabung'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: _jarijariController,
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Harap masukkan nilai jari-jari';
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: 'Jari-jari',
              ),
            ),
            TextFormField(
              controller: _tinggiController,
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Harap masukkan nilai tinggi';
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: 'Tinggi',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  double jarijari = double.parse(_jarijariController.text);
                  double tinggi = double.parse(_tinggiController.text);
                  setState(() {
                    _luas = 2 * phi * jarijari * (jarijari + tinggi);
                  });
                }
              },
              child: Text('Hitung Luas Permukaan'),
            ),
            Text('Luas Permukaan Tabung: $_luas'),
          ],
        ),
      ),
    );
  }
}
