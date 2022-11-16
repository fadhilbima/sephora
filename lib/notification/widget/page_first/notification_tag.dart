import 'package:flutter/material.dart';
import 'package:sephora_project/notification/widget/page_first/body_split_bill.dart';

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
                onPress: (){},
              ),
              NotifTag(
                text: 'Info & Promo',
                active: Active.putih,
                onPress: (){},
              ),
              NotifTag(
                text: 'Transaksi',
                active: Active.biru,
                onPress: (){},
              ),
              NotifTag(
                text: 'Split Bill',
                active: Active.putih,
                onPress: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return SplitBill();
                  }));
                },
              ),
              NotifTag(
                text: 'Keamanan',
                active: Active.putih,
                onPress: (){},
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
  NotifTag({Key? key, required this.text, required this.active, required this.onPress}) : super(key: key);
  late String text;
  late Active active;
  late VoidCallback onPress;

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
      } return InkWell(
        onTap: onPress,
        child: Container(
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
        ),
      );
    });
  }
}
