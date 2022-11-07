import 'package:flutter/material.dart';
import 'package:sephora_project/register/register_widgets/buat_mpin_card.dart';
import 'package:sephora_project/register/register_widgets/mpin_title.dart';

import '../register_widgets/bottom_continue_button.dart';
import '../register_widgets/register_back_button.dart';

class RegisterBuatMpin extends StatelessWidget {
  const RegisterBuatMpin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F7FD),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
              height: 88,
              width: 375,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20, bottom: 11),
                    child: ArrowBackButton(),
                  ),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 14),
                        child: MpinTitle(),
                      )
                  )
                ],
              )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 108),
                child: MpinCard(),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 692),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: ContinueButton(),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10
                    )
                  ]
              ),
            ),
          )
        ],
      ),
    );
  }
}
