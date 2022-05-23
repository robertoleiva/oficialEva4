import 'package:flutter/material.dart';
import 'package:eva4/app/ui/principal.dart';

void main() {
  runApp(MapGoogle());
}

class MapGoogle extends StatelessWidget {
  const MapGoogle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eva 4 MOVIL-SV',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: Principal(),
    );
  }
}