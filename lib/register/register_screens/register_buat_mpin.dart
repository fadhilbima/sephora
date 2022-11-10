import 'package:flutter/material.dart';
import 'package:sephora_project/register/register_widgets/fourth_widget/buat_mpin_card.dart';
import 'package:sephora_project/register/register_widgets/fourth_widget/mpin_continue_button.dart';
import 'package:sephora_project/register/register_widgets/fourth_widget/mpin_title.dart';

import '../register_widgets/register_back_button.dart';

class RegisterBuatMpin extends StatelessWidget {
  const RegisterBuatMpin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF3F7FD),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 108, horizontal: 20),
              child: MpinCard(),
            ),
          ),
          Container(
              height: 88,
              color: Color(0xFFF3F7FD),
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 45),
                    child: ArrowBackButton(),
                  ),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.only(top: 48),
                        child: MpinTitle(),
                      )
                  )
                ],
              )
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 120,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: MpinContinueButton(),
                ),
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
            ],
          )
        ],
      ),
    );
  }
}
