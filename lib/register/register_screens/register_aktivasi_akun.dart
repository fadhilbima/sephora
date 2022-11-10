import 'package:flutter/material.dart';
import 'package:sephora_project/register/register_widgets/third_widget/aktivasi_akun_card.dart';
import 'package:sephora_project/register/register_widgets/third_widget/aktivasi_akun_title.dart';

import 'package:sephora_project/register/register_widgets/third_widget/continue_button_aktivasi.dart';
import '../register_widgets/register_back_button.dart';

class AktivasiAkun extends StatefulWidget {
  const AktivasiAkun({Key? key}) : super(key: key);

  @override
  State<AktivasiAkun> createState() => _AktivasiAkunState();
}

class _AktivasiAkunState extends State<AktivasiAkun> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF3F7FD),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 108),
              child: AktivasiCard(),
            ),
          ),
          Container(
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
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10
                      )
                    ]
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: ContinueButtonAktivasi(),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
