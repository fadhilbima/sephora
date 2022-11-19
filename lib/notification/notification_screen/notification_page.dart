import 'package:flutter/material.dart';
import 'package:sephora_project/notification/widgets/body_widget/splitbill.dart';
import 'package:sephora_project/notification/widgets/body_widget/transaksi.dart';
import 'package:sephora_project/notification/widgets/tag_widget/tag_activation.dart';

import '../widgets/app_bar.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  PageController control=PageController();
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF3F7FD),
        body: Stack(
          children: [
            TagChips(controlling: control),
            AllAppBar(title: 'Notifikasi'),
          ],
        )
    );
  }
}
