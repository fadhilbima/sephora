import 'package:flutter/material.dart';


enum InfoDanPromo{
  info,
  promo
}

class InfoDanPromoDisplay extends StatelessWidget {
  const InfoDanPromoDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InfoPromo(infoType: InfoDanPromo.promo),
                  InfoPromo(infoType: InfoDanPromo.info)
                ]
            )
        )
    );
  }
}


class InfoPromo extends StatelessWidget {
  InfoPromo({Key? key, required this.infoType}) : super(key: key);

  late InfoDanPromo infoType;
  @override
  Widget build(BuildContext context) {
    return Builder(
        builder: (context) {
          late String labelText;
          late Widget content;
          late String information;
          if(infoType == InfoDanPromo.info) {
            labelText = 'Informasi';
            information='Nasabah sephora mobile banking yth, pada jam 17:00 sephora mobile banking telah selesa...';
            content = Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Color(0xFFF3F7FD),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(width: 2,color: Colors.white),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(188, 200, 231, 0.25),
                        blurRadius: 10
                      )
                    ]
                  ),
                  child: Image.asset('assets/icons/wrench.png', height: 26, width: 26,),
                ),
                Expanded(child: Text(information))
              ],
            );
          } else if(infoType == InfoDanPromo.promo){
            labelText = 'Promo';
            content = Image(image: AssetImage('assets/images/voucher.png'));
          } return Container(
            margin: EdgeInsets.symmetric(vertical: 7.5),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(188, 200, 231, 0.25),
                      blurRadius: 10
                  )
                ]
            ),
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(labelText),
                    Text('14 : 30')
                  ],
                ),
                SizedBox(height: 12),
                content,
                SizedBox(height: 12),
                Text('Promo Cashback Belanja Pulsa Dengan OVO')
              ],
            ),
          );
        }
    );
  }
}
