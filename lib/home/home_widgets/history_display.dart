import 'package:flutter/material.dart';

import 'history_item.dart';

class HistoryDisp extends StatelessWidget {
  const HistoryDisp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Riwayat Transaksi'),
            Text('Lihat Semua')
          ],
        ),
        SizedBox(height: 15),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(188, 200, 231, 0.25),
                    blurRadius: 10
                )
              ]
          ),
          child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.symmetric(vertical: 20),
                  height: 80,
                  child: History(
                      image: Image.asset('assets/icons/wallet.png', color: Colors.white,),
                      jenisTransaksi: 'Top Up',
                      detilTransaksi: 'Gopay - 9999999',
                      jumlah: 14000000,
                      type: Type.keluar
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.symmetric(vertical: 20),
                  height: 80,
                  child: History(
                      image: Icon(Icons.compare_arrows_rounded, size: 16,),
                      jenisTransaksi: 'Transfer',
                      detilTransaksi: 'Bri - 4943 1923 1929 3219',
                      jumlah: 41000000,
                      type: Type.masuk
                  ),
                )
              ]
          ),
        )
      ],
    );
  }
}
