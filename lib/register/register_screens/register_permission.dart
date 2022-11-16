import 'package:flutter/material.dart';
import 'package:sephora_project/register/register_widgets/fifth_widget/agree_disagree_button.dart';
import 'package:sephora_project/register/register_widgets/fifth_widget/permission_app_bar.dart';
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
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          PermissionCard(),
          PermissionAppBar(),
          AgreeDisagreeButton(),
        ],
      )
    );
  }
}