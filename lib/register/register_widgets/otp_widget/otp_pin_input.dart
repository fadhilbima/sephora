import 'package:flutter/material.dart';

class InputPinGlobal extends StatefulWidget {
  InputPinGlobal({Key? key, required this.otpValue, this.otpLength = 6}) : super(key: key);

  String otpValue;
  final int otpLength;

  @override
  State<InputPinGlobal> createState() => _InputPinGlobalState();
}

class _InputPinGlobalState extends State<InputPinGlobal> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(widget.otpLength, (index) => index+1).map((e) {
        return OtpInputPin(active: e <= widget.otpValue.length);
      }).toList(),
    );
  }
}


class OtpInputPin extends StatelessWidget {
  const OtpInputPin({Key? key, required this.active}) : super(key: key);
   final bool active;
  @override
  Widget build(BuildContext context) {
    if(active) {
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
    } return Container(
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