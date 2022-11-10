import 'package:flutter/material.dart';
import 'package:sephora_project/register/register_widgets/otp_widget/otp_keyboard.dart';
import 'package:sephora_project/register/register_widgets/otp_widget/otp_pin_input.dart';
import 'package:sephora_project/register/register_widgets/otp_widget/otp_resend_text_button.dart';
import 'package:sephora_project/register/register_widgets/otp_widget/otp_text.dart';
import 'package:sephora_project/register/register_widgets/otp_widget/otp_title.dart';
import 'package:sephora_project/register/register_widgets/otp_widget/timer.dart';

import '../register_widgets/register_back_button.dart';

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
          Container(
              height: 88,
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
                        child: OtpTitle(),
                      )
                  )
                ],
              )
          ),
          Padding(
            padding: EdgeInsets.only(top: 98),
            child: Container(
              child: Image.asset('assets/images/illustration.png'),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 35, vertical: 261),
            child: OtpText(),
          ),
          Padding(
            padding: EdgeInsets.only(top: 223),
            child: Timer(),
          ),
          Padding(
            padding: EdgeInsets.only(top: 430, right: 42, left: 43),
            child: OtpKeyboard(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 72, vertical: 331),
            child: Container(
              height: 22,
              child: Column(
                children: [
                  Row(
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

                ],
              )
            )
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 383, horizontal: 151),
            child: ResendTextButton(),
          )
        ],
      ),
    );
  }
}
