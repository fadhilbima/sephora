import 'package:flutter/material.dart';
import 'package:sephora_project/notification/widget/page_first/notification_body.dart';
import 'package:sephora_project/notification/widget/page_first/notification_tag.dart';
import 'package:sephora_project/notification/widget/page_first/notification_appbar.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF3F7FD),
        body: Stack(
          children: [
            TitleDisplay(),
            TagDisplay(),
            NotificationTransactionDisplay()
          ],
        )
    );
  }
}
