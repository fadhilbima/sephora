import 'package:flutter/material.dart';

class Keamanan extends StatelessWidget {
  const Keamanan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 7.5),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(188, 200, 231, 0.25),
                        blurRadius: 10
                    )
                  ]
              ),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Keamanan'),
                      Text('14 : 30')
                    ],
                  ),
                  SizedBox(height: 11),
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Color(0xFFF3F7FD),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(188, 200, 231, 0.25),
                              blurRadius: 10
                            ),
                          ],
                          border: Border.all(width: 2, color: Colors.white),
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: AssetImage('assets/icons/lock.png'),
                          )
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Transaksi Anomali', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),),
                            Text('Kami mendeteksi adanya transaksi anomali pada akun Anda di jam 17:00 WIB sebesar...', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),)
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
        )
    );
  }
}
