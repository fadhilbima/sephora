import 'package:flutter/material.dart';

import '../register_back_button.dart';
import 'aktivasi_akun_title.dart';

class AktivasiAkunAppBar extends StatelessWidget {
  const AktivasiAkunAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 88,
        width: MediaQuery.of(context).size.width,
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
                  child: AktivasiTitle(),
                )
            )
          ],
        )
    );
  }
}
