import 'package:flutter/material.dart';
import 'package:sephora_project/register/register_widgets/agree_disagree_button.dart';
import 'package:sephora_project/register/register_widgets/permission_card.dart';

import '../register_widgets/permission_title.dart';
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
                        child: PermissionTitle(),
                      )
                  )
                ],
              )
          ),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 108),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PermissionCard(),
                ],
              )
          ),
          Padding(
            padding: EdgeInsets.only(top: 692),
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: AgreeDisagreeButton(),
            ),
          )
        ],
      )
    );
  }
}
