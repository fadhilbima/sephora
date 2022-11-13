import 'package:flutter/material.dart';
import 'package:sephora_project/register/register.dart';

class OtpKeyboard extends StatefulWidget {
  OtpKeyboard({Key? key, required this.changed}) : super(key: key);

  final ValueChanged<String> changed;

  @override
  State<OtpKeyboard> createState() => _OtpKeyboardState();
}

class _OtpKeyboardState extends State<OtpKeyboard> {
  @override
  Widget build(BuildContext context) {
    return GridView(
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 30,
        crossAxisSpacing: 25,
        childAspectRatio: 1.4/1
      ),
      children: [
        OtpButton(text: '1', onPressing: (){widget.changed('1');}),
        OtpButton(text: '2', onPressing: (){widget.changed('2');}),
        OtpButton(text: '3', onPressing: (){widget.changed('3');}),
        OtpButton(text: '4', onPressing: (){widget.changed('4');}),
        OtpButton(text: '5', onPressing: (){widget.changed('5');}),
        OtpButton(text: '6', onPressing: (){widget.changed('6');}),
        OtpButton(text: '7', onPressing: (){widget.changed('7');}),
        OtpButton(text: '8', onPressing: (){widget.changed('8');}),
        OtpButton(text: '9', onPressing: (){widget.changed('9');}),
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return AktivasiAkun();
            }));
          },
        ),
        OtpButton(text: '0', onPressing: (){widget.changed('0');}),
        InkWell(
          onTap: () {
            widget.changed('del');
          },
          child: Image.asset('assets/icons/delete.png'),
        )
      ],
    );
  }
}

class OtpButton extends StatelessWidget {
  const OtpButton({Key? key, required this.text, this.onPressing}) : super(key: key);

  final String text;
  final VoidCallback? onPressing;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(60),
      onTap: onPressing,
      child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              color: Color(0xFFF3F7FD),
            shape: BoxShape.circle
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            )
          )
      )
    );
  }
}

