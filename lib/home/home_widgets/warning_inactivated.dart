import 'package:flutter/material.dart';

class WarningInactivated extends StatelessWidget {
  const WarningInactivated({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white
      ),
      height: 67,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              height: 37,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Akun Anda Belum Diaktivasi', style: TextStyle(color: Color(0xFFE32D2D), fontWeight: FontWeight.w500, fontSize: 12),),
                  Text('Aktivasi akun Anda untuk menikmati seluruh fitur sephora', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 10),)
                ],
              ),
            ),
          ),
          Container(
            height: 28,
            width: 28,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color(0xFFF3F7FD)
            ),
            child: Icon(Icons.arrow_forward_ios_rounded, size: 14, color: Color(0xFF2F82FF),),
          )
        ],
      )
    );
  }
}
