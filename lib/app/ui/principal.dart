import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:eva4/app/controler/principalControler.dart';
import 'dart:ffi';

class Principal extends StatefulWidget {
  Principal({Key? key}) : super(key: key);

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  final _controler = PrincipalControler();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('MovilSV-AppMaps'),
        ),
        body: GoogleMap(
          onMapCreated: _controler.onMapCreated,
          initialCameraPosition: _controler.initialCameraPosition,
          markers: _controler.marcadores,
        ));
  }
}