import 'package:flutter/material.dart';

class BigCard extends StatelessWidget {
  const BigCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(15)
      ),
      margin: EdgeInsets.only(bottom: 40),
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 60,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Text('Tabungan Harian',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      letterSpacing: 1.4,
                      height: 1.94
                    )
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text('1231 1231 1231 6412',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          letterSpacing: 1.4,
                          height: 3.8,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 6.5),
                      child: Container(
                        height: 18,
                        width: 39,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 0.4),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(
                          child: Text('Salin',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    )
                  ],
                ),
              ],
            )
          ),
          SizedBox(height: 43),
          Container(
            height: 58,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Saldo Rekening Utama',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    height: 1.5
                  ),
                ),
                Row(
                  children: [
                    Text('Rp 15.000.000.000',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                      ),
                    ),
                    Icon(Icons.remove_red_eye, color: Colors.white,)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
