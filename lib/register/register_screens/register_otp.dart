import 'package:flutter/material.dart';
import 'package:sephora_project/register/register_widgets/otp_keyboard.dart';
import 'package:sephora_project/register/register_widgets/otp_pin_input.dart';
import 'package:sephora_project/register/register_widgets/otp_text.dart';
import 'package:sephora_project/register/register_widgets/otp_title.dart';
import 'package:sephora_project/register/register_widgets/timer.dart';

import '../register_widgets/bottom_continue_button.dart';
import '../register_widgets/register_back_button.dart';
import '../register_widgets/register_card.dart';

class RegisterOtp extends StatefulWidget {
  const RegisterOtp({Key? key}) : super(key: key);

  @override
  State<RegisterOtp> createState() => _RegisterOtpState();
}

class _RegisterOtpState extends State<RegisterOtp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
                            child: OtpTitle(),
                          )
                      )
                    ],
                  )
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 98),
            child: Container(
              child: Image.asset('assets/images/illustration.png'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 261),
            child: OtpText(),
          ),
          Padding(
            padding: EdgeInsets.only(top: 223),
            child: Timer(),
          ),
          Padding(
            padding: EdgeInsets.only(top: 430),
            child: OtpKeyboard(),
          ),
          Padding(
            padding: EdgeInsets.only(top: 331),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 22,
                  width: 232,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OtpInputPin(),
                      OtpInputPin(),
                      OtpInputPin(),
                      OtpInputPin(),
                      OtpUnInputPin(),
                      OtpUnInputPin(),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
