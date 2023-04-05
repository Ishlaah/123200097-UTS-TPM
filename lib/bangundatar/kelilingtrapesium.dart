import 'package:flutter/material.dart';

class KelilingTrapesiumPage extends StatefulWidget {
  @override
  _KelilingTrapesiumPageState createState() => _KelilingTrapesiumPageState();
}

class _KelilingTrapesiumPageState extends State<KelilingTrapesiumPage> {
  final _formKey = GlobalKey<FormState>();
  final _sisi1Controller = TextEditingController();
  final _sisi2Controller = TextEditingController();
  final _sisi3Controller = TextEditingController();
  final _sisi4Controller = TextEditingController();
  double _keliling = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keliling Trapesium'),
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
              controller: _sisi3Controller,
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Harap masukkan nilai sisi 3';
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: 'Sisi 3',
              ),
            ),
            TextFormField(
              controller: _sisi4Controller,
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Harap masukkan nilai sisi 4';
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: 'Sisi 4',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  double sisi1 = double.parse(_sisi1Controller.text);
                  double sisi2 = double.parse(_sisi2Controller.text);
                  double sisi3 = double.parse(_sisi3Controller.text);
                  double sisi4 = double.parse(_sisi4Controller.text);
                  setState(() {
                    _keliling = sisi1 + sisi2 + sisi3 + sisi4;
                  });
                }
              },
              child: Text('Hitung Keliling'),
            ),
            Text('Keliling Trapesium: $_keliling'),
          ],
        ),
      ),
    );
  }
}
