import 'package:flutter/material.dart';

class Pewaktu extends StatefulWidget {
  Pewaktu({Key? key, required this.sisaWaktu}) : super(key: key);
  
  int sisaWaktu;

  @override
  State<Pewaktu> createState() => _PewaktuState();
}

class _PewaktuState extends State<Pewaktu> {
  @override

  Widget build(BuildContext context) {
    return Text('gagal', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),);
  }
}