import 'package:flutter/material.dart';

class AktivasiFormItem extends StatelessWidget {
  const AktivasiFormItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 48,
          child: TextField(
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xFFF3F7FD))
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xFFF3F7FD))
                ),
                filled: true,
                fillColor: Color(0xFFF3F7FD),
                hintText: 'No. Rekening',
                hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF97A5C9)),
                contentPadding: EdgeInsets.fromLTRB(10, 14, 0, 14)
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Container(
                height: 48,
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Color(0xFFF3F7FD))
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Color(0xFFF3F7FD))
                      ),
                      filled: true,
                      fillColor: Color(0xFFF3F7FD),
                      hintText: 'ID Pengguna',
                      hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF97A5C9)),
                      contentPadding: EdgeInsets.fromLTRB(10, 14, 0, 14)
                  ),
                ),
              ),
              Container(
                height: 19,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Text('Berisi Alphanumeric sejumlah 10-30 karakter.', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: Color(0xFFBCC8E7)),),
                  ],
                )
              )
            ],
          )
        ),
        Padding(
          padding: EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Container(
                height: 48,
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Color(0xFFF3F7FD))
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Color(0xFFF3F7FD))
                      ),
                      filled: true,
                      fillColor: Color(0xFFF3F7FD),
                      suffixIcon: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 12.5),
                            child: Container(
                              child: Image.asset('assets/icons/eyelash.png'),
                            ),
                          )
                        ],
                      ),
                      hintText: 'Kata Sandi',
                      hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF97A5C9)),
                      contentPadding: EdgeInsets.fromLTRB(10, 14, 0, 14)
                  ),
                ),
              ),
              Container(
                  height: 19,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Text('Berisi Alphanumeric sejumlah 8-10 karakter.', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: Color(0xFFBCC8E7)),),
                    ],
                  )
              )
            ],
          )
        ),
        Padding(
          padding: EdgeInsets.only(top: 20),
          child: Container(
            height: 48,
            child: TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Color(0xFFF3F7FD))
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Color(0xFFF3F7FD))
                  ),
                  filled: true,
                  fillColor: Color(0xFFF3F7FD),
                  hintText: 'Konfirmasi Kata Sandi',
                  suffixIcon: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 12.5),
                        child: Container(
                          child: Image.asset('assets/icons/eyelash.png'),
                        ),
                      )
                    ],
                  ),
                  hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF97A5C9)),
                  contentPadding: EdgeInsets.fromLTRB(10, 14, 0, 14)
              ),
            ),
          ),
        ),
      ],
    );
  }
}
