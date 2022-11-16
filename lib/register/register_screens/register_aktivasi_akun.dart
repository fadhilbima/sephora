import 'package:flutter/material.dart';
import 'package:sephora_project/register/register_widgets/third_widget/aktivasi_akun_app_bar.dart';
import 'package:sephora_project/register/register_widgets/third_widget/aktivasi_akun_card.dart';

import 'package:sephora_project/register/register_widgets/third_widget/continue_button_aktivasi.dart';

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
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          AktivasiCard(),
          AktivasiAkunAppBar(),
          ContinueButtonAktivasi(),
        ],
      ),
    );
  }
}
