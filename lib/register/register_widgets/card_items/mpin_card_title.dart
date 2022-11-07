import 'package:flutter/material.dart';

class MpinCardTitle extends StatelessWidget {
  const MpinCardTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Color(0xFFDAE9FF),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Center(
              child: Image.asset('assets/icons/lock.png'),
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
                        Text('Informasi MPIN', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),),
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
                        Text('Masukkan informasi mengenai MPIN akun', style: TextStyle(fontSize: 12, color: Color(0xFF727FA3), fontWeight: FontWeight.w400)),
                        Text('mobile banking Sephora Anda.', style: TextStyle(fontSize: 12, color: Color(0xFF727FA3), fontWeight: FontWeight.w400, height: 1.325)),
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
