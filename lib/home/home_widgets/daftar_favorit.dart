import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:sephora_project/home/home_widgets/favorite/add_st.dart';

class DaftarFavorit extends StatelessWidget {
  const DaftarFavorit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Daftar Favorite'),
            Text('Lihat Semua')
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AddSt(bankName: Icon(Icons.add), text: 'Tambah',),
            AddSt(bankName: Image.asset('assets/icons/mandiri.png', fit: BoxFit.contain), text: 'Ahmad Wahyu Hamzah',),
            AddSt(bankName: Image.asset('assets/icons/bri.png',fit: BoxFit.contain), text: 'Wahyu Ahmad Hamzah'),
            AddSt(bankName: Image.asset('assets/icons/jenius.png', fit: BoxFit.contain), text: 'Guz Azmy Zon')
          ],
        )
      ],
    );
  }
}