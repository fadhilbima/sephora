import 'package:flutter/material.dart';
import 'package:sephora_project/notification/widget/notification_back_button.dart';

class NotificationTitle extends StatelessWidget {
  const NotificationTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('Notifikasi', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)
    );
  }
}

class TitleDisplay extends StatelessWidget {
  const TitleDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, top: 45),
            child: NotificationBackButton(),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 48),
              child: NotificationTitle(),
            ),
          )
        ],
      ),
    );
  }
}

