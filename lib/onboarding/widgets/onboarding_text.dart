import 'package:flutter/material.dart';

class TextIndicator extends StatelessWidget {
  const TextIndicator({Key? key, required this.currentText}) : super(key: key);
  final int currentText;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextIndicatorItem(textActivate: currentText)
      ],
    );
  }
}

class TextIndicatorItem extends StatelessWidget {
  TextIndicatorItem({Key? key, required this.textActivate}) : super(key: key);
  int textActivate;

  @override
  Widget build(BuildContext context) {
    if (textActivate==0){
      return Container(
        height: 76,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Expanded(
                child: Text('Kemudahan dalam Genggaman', style: TextStyle(fontSize: 18), textAlign: TextAlign.center,)
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 40,
                child: Text('Hanya dengan 3 langkah registrasi, nikmati segala'
                    ' kemudahan dalam bertransaksi',
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF727FA3)),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      );
    } else if (textActivate==1){
      return Container(
        height: 76,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Expanded(
              child: Text('Transaksi Internasional', style: TextStyle(fontSize: 18), textAlign: TextAlign.center,),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 40,
                child: Text('Nikmati kemudahan bertransaksi di seluruh dunia dengan kartu VISA dan Mastercard', style: TextStyle(fontSize: 14, color: Color(0xFF727FA3)), textAlign: TextAlign.center),
              ),
            )
          ],
        ),
      );
    } else {
      return Container(
        height: 76,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Expanded(
              child: Text('Keamanan Dalam Bertransaksi', style: TextStyle(fontSize: 18), textAlign: TextAlign.center,),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 40,
                child: Text('Keamanan dalam bertransaksi Anda merupakan'
                    ' prioritas bagi kami',
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF727FA3)),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      );
    }
  }
}
