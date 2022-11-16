import 'package:flutter/material.dart';

class TagDisplay extends StatelessWidget {
  const TagDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 98),
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              NotifTag(
                text: 'Semua',
                active: Active.putih,
              ),
              NotifTag(
                text: 'Info & Promo',
                active: Active.putih,
              ),
              NotifTag(
                text: 'Transaksi',
                active: Active.biru,
              ),
              NotifTag(
                text: 'Split Bill',
                active: Active.putih,
              ),
              NotifTag(
                text: 'Keamanan',
                active: Active.putih,
              ),
            ],
          )
      ),
    );
  }
}


enum Active {
  biru,
  putih
}

class NotifTag extends StatelessWidget {
  NotifTag({Key? key, required this.text, required this.active}) : super(key: key);
  late String text;
  late Active active;

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context){
      late Color navColor;
      late Color textColor;
      if(active==Active.biru) {
        navColor=Colors.blue;
        textColor=Colors.white;
      } else {
        navColor=Colors.white;
        textColor=Colors.purple;
      } return Container(
        padding: EdgeInsets.symmetric(horizontal: 8),
        margin: EdgeInsets.symmetric(horizontal: 10),
        height: 26,
        decoration: BoxDecoration(
            color: navColor,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
          child: Text(text, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: textColor)),
        ),
      );
    });
  }
}
