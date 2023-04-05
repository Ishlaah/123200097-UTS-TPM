import 'package:flutter/material.dart';
import 'luastabung.dart';
import 'volumetabung.dart';

class Tabung extends StatefulWidget {
  const Tabung({Key? key}) : super(key: key);

  @override
  _TabungState createState() => _TabungState();
}

class _TabungState extends State<Tabung> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ButtonBar(
      alignment: MainAxisAlignment.center,
      children: <Widget>[
        OutlineButton(
          child: const Text('Luas Permukaan'),
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return LuasPermukaanTabungPage();
            }));
          },
        ),
        OutlineButton(
          child: const Text('Volume'),
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return VolumeTabungPage();
            }));
          },
        ),
      ],
    ));
  }
}
