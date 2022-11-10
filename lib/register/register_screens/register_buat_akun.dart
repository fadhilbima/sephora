import 'package:flutter/material.dart';
import 'package:sephora_project/register/register_widgets/first_widget/bottom_continue_button.dart';
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
      backgroundColor: Color(0xFFF3F7FD),
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 108),
              child: RegisterCard(),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
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
                    child: RegisterTitle(),
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 120,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: ContinueButton(),
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