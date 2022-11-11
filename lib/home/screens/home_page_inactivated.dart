import 'package:flutter/material.dart';
import 'package:sephora_project/home/home_widgets/bank_card.dart';
import 'package:sephora_project/home/home_widgets/user_profile.dart';
import 'package:sephora_project/home/home_widgets/warning_inactivated.dart';

class HomieInactivated extends StatefulWidget {
  const HomieInactivated({Key? key}) : super(key: key);

  @override
  State<HomieInactivated> createState() => _HomieInactivatedState();
}

class _HomieInactivatedState extends State<HomieInactivated> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F7FD),
      body: Column(
        children: [
          Container(
            height: 120,
            padding: EdgeInsets.only(top: 59, left: 20, right: 39),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                UserProfile(),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      WarningInactivated(),
                      SizedBox(height: 19),
                      BankCard()
                    ],
                  ),
                )
            ),
          )
        ],
      )
    );
  }
}
