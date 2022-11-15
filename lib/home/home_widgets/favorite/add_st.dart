import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class AddSt extends StatelessWidget {
  AddSt({Key? key, required this.bankName, required this.text}) : super(key: key);
  Widget? bankName;
  String? text;
  @override
  Widget build(BuildContext context) {
    if (text!='Tambah') {
      return Container(
          height: 86,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(188, 200, 231, 0.25),
                          blurRadius: 10
                      ),
                    ],
                    borderRadius: BorderRadius.circular(40)
                ),
                child: Center(
                  child: Container(
                    height: 40,
                    width: 40,
                    child: bankName,
                  ),
                ),
              ),
              Builder(builder: (context){
                final textLength = text!.length;
                final suggestion = 11;
                final titik = '...';
                final titiklength = titik.length;

                if(textLength > 11){
                  var textTampil = '';
                  var potong = text!.substring(0, suggestion - titiklength);
                  return Text('$potong$titik', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500));
                }
                return Text(text!, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500));
              })
            ],
          )
      );
    } return Container(
      height: 86,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(100),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(84, 163, 216, 0.25),
                    blurRadius: 10,
                  )
                ]
            ),
            child: DottedBorder(
                color: Color(0xFF2F82FF),
                borderType: BorderType.Circle,
                dashPattern: [8,4],
                child: Center(
                  child: bankName,
                )
            ),
          ),
          Text(text!, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),)
        ],
      ),
    );
  }
}