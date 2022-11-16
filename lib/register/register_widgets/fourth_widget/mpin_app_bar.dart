import 'package:flutter/material.dart';

import '../register_back_button.dart';
import 'mpin_title.dart';

class MpinAppBar extends StatelessWidget {
  const MpinAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  child: MpinTitle(),
                )
            )
          ],
        )
    );
  }
}
