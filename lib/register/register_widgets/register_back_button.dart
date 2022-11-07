import 'package:flutter/material.dart';

class ArrowBackButton extends StatelessWidget {
  const ArrowBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pop(context);
      },
      child: Container(
        height: 32,
        width: 32,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
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
        child: Padding(
          padding: EdgeInsets.all(4),
          child: Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                  color: Colors.white
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 7),
                child: Image.asset('assets/icons/arrow_back.png'),
              )
          ),
        ),
      ),
    );
  }
}
