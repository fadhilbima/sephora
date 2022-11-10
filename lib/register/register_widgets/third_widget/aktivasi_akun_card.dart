import 'package:flutter/material.dart';
import 'package:sephora_project/register/register_widgets/card_items/third_page_card_item/aktivasi_akun_card_title.dart';
import 'package:sephora_project/register/register_widgets/card_items/third_page_card_item/aktivasi_form.dart';

class AktivasiCard extends StatelessWidget {
  const AktivasiCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 540,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Color(0xFFBCC8E7),
                blurRadius: 10,
                spreadRadius: 0,
                offset: Offset(0, 3)
            )
          ]
      ),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: AktivasiCardTitle(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 93),
            child: Divider(
              thickness: 1.0,
              indent: 20,
              endIndent: 20,
              color: Color(0xFFE9F0FF),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 118, left: 20, right: 20),
            child: AktivasiFormItem(),
          )
        ],
      ),
    );
  }
}
