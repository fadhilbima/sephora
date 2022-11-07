import 'package:flutter/material.dart';

class PermissionCard extends StatelessWidget {
  const PermissionCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 540,
      width: 335,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Color(0xFFBCC8E7),
                blurRadius: 10,
                spreadRadius: 0,
                offset: Offset(0, 3)
            )
          ]
      ),
    );
  }
}
