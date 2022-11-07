import 'package:flutter/material.dart';

class OtpText extends StatelessWidget {
  const OtpText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Masukkan 6 digit kode OTP yang telah dikirimkan', style: TextStyle(fontSize: 14, height: 1.325),),
        Text('melalui nomor telepon', style: TextStyle(fontSize: 14, height: 1.325))
      ],
    );
  }
}
