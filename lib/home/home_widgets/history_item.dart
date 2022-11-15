import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

enum Type {
  keluar,
  masuk,
}

class History extends StatelessWidget {
  History({
    Key? key,
    required this.image,
    required this.jenisTransaksi,
    required this.detilTransaksi,
    required this.jumlah,
    required this.type}) : super(key: key);

  late Widget image;
  late String jenisTransaksi;
  late String detilTransaksi;
  late int jumlah;
  late Type type;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Builder(builder: (context) {
          late Color pictColor;
          if(type==Type.keluar){
            pictColor=Color.fromRGBO(180, 134, 255, 1);
          } else {
            pictColor=Colors.orange;
          } return Container(
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                  color: pictColor,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Center(
                child: Container(
                  height: 17.5,
                  width: 15,
                  child: image,
                ),
              )
          );
        }),
        SizedBox(width: 10),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(jenisTransaksi, style: TextStyle(color: Color(0xFF2B2F3C), fontSize: 12, fontWeight: FontWeight.w500),),
              Text(detilTransaksi, style: TextStyle(color: Color(0xFF7B87AF), fontSize: 12, fontWeight: FontWeight.w500),)
            ],
          ),
        ),
        Builder(
            builder: (context) {
              final format = NumberFormat('#,###', 'id_ID');
              late Color color;

              if(type==Type.keluar){
                color=Colors.red;
              } else{
                color=Colors.green;
              }
              return Text(
                '${format.format(jumlah)}', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: color),
              );
            }
        )
      ],
    );
  }
}
