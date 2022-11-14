import 'package:flutter/material.dart';
import 'package:sephora_project/home/home_widgets/card_menu.dart';

import 'big_card.dart';

class BankCard extends StatelessWidget {
  const BankCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 335/282,
      child: Stack(
        children: [
          BigCard(),
          CardMenu(),
        ],
      )
    );
  }
}
