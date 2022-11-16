import 'package:flutter/material.dart';
import 'package:sephora_project/register/register_widgets/fourth_widget/buat_mpin_card.dart';
import 'package:sephora_project/register/register_widgets/fourth_widget/mpin_app_bar.dart';
import 'package:sephora_project/register/register_widgets/fourth_widget/mpin_continue_button.dart';
import 'package:sephora_project/register/register_widgets/fourth_widget/mpin_title.dart';

import '../register_widgets/register_back_button.dart';

class RegisterBuatMpin extends StatelessWidget {
  const RegisterBuatMpin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          MpinCard(),
          MpinAppBar(),
          MpinContinueButton()
        ],
      ),
    );
  }
}
