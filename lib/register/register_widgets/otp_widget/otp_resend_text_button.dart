import 'package:flutter/material.dart';

class ResendTextButton extends StatelessWidget {
  const ResendTextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            width: 75,
            height: 20,
            child: Center(
              child: Text('Kirim Ulang', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Color(0xFF2F82FF)),),
            )
          ),
        )
      ],
    );
  }
}
