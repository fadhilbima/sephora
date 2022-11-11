import 'package:flutter/material.dart';

import 'big_card.dart';

class BankCard extends StatelessWidget {
  const BankCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 335/240,
      child: Stack(
        children: [
          BigCard(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 0,
              color: Colors.red,
            ),
          )
        ],
      )
    );
  }
}
