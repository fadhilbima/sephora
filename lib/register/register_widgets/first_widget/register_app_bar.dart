import 'package:flutter/material.dart';
import 'package:sephora_project/register/register_widgets/first_widget/register_title.dart';

import '../register_back_button.dart';

class RegisterAppBar extends StatelessWidget {
  const RegisterAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
