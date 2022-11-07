import 'package:flutter/material.dart';

class Timer extends StatelessWidget {
  const Timer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('04 : 30', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),);
  }
}
