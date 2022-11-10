import 'package:flutter/material.dart';
import 'package:sephora_project/register/register_widgets/fifth_widget/agree_disagree_button.dart';
import 'package:sephora_project/register/register_widgets/fifth_widget/permission_card.dart';

import '../register_widgets/fifth_widget/permission_title.dart';
import '../register_widgets/register_back_button.dart';

class RegisterPermission extends StatefulWidget {
  const RegisterPermission({Key? key}) : super(key: key);

  @override
  State<RegisterPermission> createState() => _RegisterPermissionState();
}

class _RegisterPermissionState extends State<RegisterPermission> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F7FD),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 108),
              child: PermissionCard(),
            ),
          ),
          Container(
            color: Color(0xFFF3F7FD),
            height: 88,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 45, left: 20),
                  child: ArrowBackButton(),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(top: 48),
                    child: PermissionTitle(),
                  ),
                )
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 22),
                height: 120,
                color: Colors.white,
                child: AgreeDisagreeButton(),
              )
            ],
          )
        ],
      )
    );
  }
}