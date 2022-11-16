import 'package:flutter/material.dart';
import 'package:sephora_project/register/register_widgets/fifth_widget/permission_title.dart';

import '../register_back_button.dart';

class PermissionAppBar extends StatelessWidget {
  const PermissionAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
