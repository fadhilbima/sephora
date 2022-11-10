import 'package:flutter/material.dart';

class OtpInputPin extends StatelessWidget {
  const OtpInputPin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 22,
      width: 22,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: Color(0xFFDAE9FF),
      ),
      child: Center(
        child: Container(
          height: 15.71,
          width: 15.71,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Color(0xFF2F82FF)
          ),
        ),
      )
    );
  }
}

class OtpUnInputPin extends StatelessWidget {
  const OtpUnInputPin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 22,
        width: 22,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
        ),
        child: Center(
          child: Container(
            height: 15.71,
            width: 15.71,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.transparent,
              border: Border.all(color: Color(0xFF97A5C9)),
            ),
          )
        )
    );
  }
}

