import 'package:flutter/material.dart';

class ResendTextButton extends StatelessWidget {
  const ResendTextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('Kirim Ulang', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Color(0xFF2F82FF)),);
  }
}
