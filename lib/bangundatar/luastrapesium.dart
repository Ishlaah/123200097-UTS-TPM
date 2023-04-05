import 'package:flutter/material.dart';

class LuasTrapesiumPage extends StatefulWidget {
  @override
  _LuasTrapesiumPageState createState() => _LuasTrapesiumPageState();
}

class _LuasTrapesiumPageState extends State<LuasTrapesiumPage> {
  final _formKey = GlobalKey<FormState>();
  final _sisi1Controller = TextEditingController();
  final _sisi2Controller = TextEditingController();
  final _tinggiController = TextEditingController();
  double _luas = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Luas Trapesium'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: _sisi1Controller,
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Harap masukkan nilai sisi 1';
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: 'Sisi 1',
              ),
            ),
            TextFormField(
              controller: _sisi2Controller,
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Harap masukkan nilai sisi 2';
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: 'Sisi 2',
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
                  double sisi1 = double.parse(_sisi1Controller.text);
                  double sisi2 = double.parse(_sisi2Controller.text);
                  double tinggi = double.parse(_tinggiController.text);
                  setState(() {
                    _luas = (sisi1 * sisi2) * tinggi / 2;
                  });
                }
              },
              child: Text('Hitung Luas'),
            ),
            Text('Luas Trapesium: $_luas'),
          ],
        ),
      ),
    );
  }
}
