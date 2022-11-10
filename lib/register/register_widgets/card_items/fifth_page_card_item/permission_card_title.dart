import 'package:flutter/material.dart';

class PermissionCardTitle extends StatelessWidget {
  const PermissionCardTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Color(0xFFDAE9FF),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Center(
              child: Container(
                height: 18,
                width: 18,
                child: Image.asset('assets/icons/check_box_rounded.png'),
              )
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 50),
            child: Stack(
              children: [
                Container(
                    height: 20,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text('Informasi Data Diri', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, height: 1.325),),
                        )
                      ],
                    )
                ),
                Padding(
                  padding: EdgeInsets.only(top: 24),
                  child: Container(
                    height: 36,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text('Masukkan informasi data diri Anda untuk proses pembuatan akun.', style: TextStyle(fontSize: 12, color: Color(0xFF727FA3), fontWeight: FontWeight.w400)),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
