import 'package:flutter/material.dart';

class OtpText extends StatelessWidget {
  const OtpText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Text('Masukkan 6 digit kode OTP yang telah dikirimkan melalui nomor telepon +62 81231231232  ', style: TextStyle(fontSize: 14, height: 1.325), textAlign: TextAlign.center,),
    );
  }
}
