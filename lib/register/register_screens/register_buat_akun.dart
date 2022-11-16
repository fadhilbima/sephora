import 'package:flutter/material.dart';
import 'package:sephora_project/register/register_widgets/first_widget/bottom_continue_button.dart';
import 'package:sephora_project/register/register_widgets/first_widget/register_app_bar.dart';
import 'package:sephora_project/register/register_widgets/register_back_button.dart';
import 'package:sephora_project/register/register_widgets/first_widget/register_card.dart';
import 'package:sephora_project/register/register_widgets/first_widget/register_title.dart';

class RegisterBuatAkun extends StatefulWidget {
  const RegisterBuatAkun({Key? key}) : super(key: key);

  @override
  State<RegisterBuatAkun> createState() => _RegisterBuatAkunState();
}

class _RegisterBuatAkunState extends State<RegisterBuatAkun> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          RegisterCard(),
          RegisterAppBar(),
          ContinueButton(),
        ],
      ),
    );
  }
}