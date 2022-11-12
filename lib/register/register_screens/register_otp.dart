import 'package:flutter/material.dart';
import 'package:sephora_project/register/register_widgets/otp_widget/otp_keyboard.dart';
import 'package:sephora_project/register/register_widgets/otp_widget/otp_pin_input.dart';
import 'package:sephora_project/register/register_widgets/otp_widget/otp_resend_text_button.dart';
import 'package:sephora_project/register/register_widgets/otp_widget/otp_text.dart';
import 'package:sephora_project/register/register_widgets/otp_widget/otp_title.dart';
import 'package:sephora_project/register/register_widgets/otp_widget/timer.dart';

import '../register_widgets/register_back_button.dart';

class RegisterOtp extends StatefulWidget {
  RegisterOtp({Key? key}) : super(key: key);
  @override
  State<RegisterOtp> createState() => _RegisterOtpState();
}

class _RegisterOtpState extends State<RegisterOtp> {
  final _otplength = 6;
  String _otpvalue = '';
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
            padding: EdgeInsets.only(top: 410, right: 42, left: 43),
            child: OtpKeyboard(
                changed: (String value) {
                  if(value=='del'){
                    return _deleteSession();
                  }
                  if (_otpvalue.length < _otplength) {
                    if(value!=_otplength){
                      setState(() {
                        _otpvalue += value;
                        print(_otpvalue);
                      });
                    }
                  }
                  print(_otpvalue);
                }
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 72, vertical: 331),
            child: Container(
              height: 22,
              child: Column(
                children: [
                  InputPinGlobal(otpValue: _otpvalue, otpLength: _otplength,)
                ],
              )
            )
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 370, horizontal: 151),
            child: ResendTextButton(),
          )
        ],
      ),
    );
  }
  void _deleteSession() {
    if(_otpvalue.isNotEmpty){
      print('Karakter yang baru saja terhapus: ${_otpvalue.split('').last}');
      final delete = _otpvalue.split('');
      delete.removeLast();
      final join = delete.join('');
      setState(() {
        _otpvalue = join;
      });
      print('All Character Now: $_otpvalue');
    }
  }


}