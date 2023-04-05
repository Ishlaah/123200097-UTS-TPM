import 'package:flutter/material.dart';
import 'kelilingtrapesium.dart';
import 'luastrapesium.dart';

class Trapesium extends StatefulWidget {
  const Trapesium({Key? key}) : super(key: key);

  @override
  _TrapesiumState createState() => _TrapesiumState();
}

class _TrapesiumState extends State<Trapesium> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ButtonBar(
      alignment: MainAxisAlignment.center,
      children: <Widget>[
        OutlineButton(
          child: const Text('Luas'),
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return LuasTrapesiumPage();
            }));
          },
        ),
        OutlineButton(
          child: const Text('Keliling'),
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return KelilingTrapesiumPage();
            }));
          },
        ),
      ],
    ));
  }
}
