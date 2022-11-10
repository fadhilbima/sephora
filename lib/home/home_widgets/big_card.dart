import 'package:flutter/material.dart';

class BigCard extends StatelessWidget {
  const BigCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Tabungan Harian', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white, letterSpacing: 2.0)),
          Row(
            children: [
              Text('1231 1231 1231 1231'),
              Text('Salin')
            ],
          ),
          Text('Saldo Rekening Utama'),
          Row(
            children: [
              Text('Rp 15.000.000.000'),
              Icon(Icons.remove_red_eye)
            ],
          )
        ],
      ),
    );
  }
}
