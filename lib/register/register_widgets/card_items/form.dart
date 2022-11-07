import 'package:flutter/material.dart';

class FormItem extends StatelessWidget {
  const FormItem({Key? key}) : super(key: key);

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
                hintText: 'NIK',
                hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF97A5C9)),
                contentPadding: EdgeInsets.fromLTRB(10, 14, 0, 14)
            ),
          ),
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
                  hintText: 'No. Telepon',
                  hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF97A5C9)),
                  contentPadding: EdgeInsets.fromLTRB(10, 14, 0, 14)
              ),
            ),
          ),
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
                  hintText: 'Nama Lengkap',
                  hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF97A5C9)),
                  contentPadding: EdgeInsets.fromLTRB(10, 14, 0, 14)
              ),
            ),
          ),
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
                  suffixIcon: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 12.5),
                        child: Container(
                          child: Image.asset('assets/icons/calendar.png'),
                        ),
                      )
                    ],
                  ),
                  filled: true,
                  fillColor: Color(0xFFF3F7FD),
                  hintText: 'Tanggal Lahir',
                  hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF97A5C9)),
                  contentPadding: EdgeInsets.fromLTRB(10, 14, 0, 14)
              ),
            ),
          ),
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
                  hintText: 'Email',
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
