import 'package:flutter/material.dart';
import 'package:sephora_project/notification/widget/page_first/notification_appbar.dart';

import '../widget/page_first/notification_tag.dart';

class ConnectBodyTag extends StatefulWidget {
  const ConnectBodyTag({Key? key}) : super(key: key);

  @override
  State<ConnectBodyTag> createState() => _ConnectBodyTagState();
}

class _ConnectBodyTagState extends State<ConnectBodyTag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F7FD),
      body: Stack(
        children: [
          TitleDisplay(),
          IniTag()
        ],
      ),
    );
  }
}

class IniTag extends StatelessWidget {
  const IniTag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 98),
      child: Container(
        height: 26,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                margin: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Text('Semua'),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                margin: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Text('Semua'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
