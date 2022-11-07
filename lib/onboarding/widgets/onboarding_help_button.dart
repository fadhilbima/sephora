import 'package:flutter/material.dart';

class OnBoardingHelpButton extends StatelessWidget {
  const OnBoardingHelpButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: (){},
        child: Container(
          width: 123,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 15,
                width: 15,
                child: Image.asset('assets/images/Chat.png'),
              ),
              SizedBox(width: 6.5),
              Text('Butuh Bantuan?',
                  style: TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xFF2F82FF)
                  ),
              ),
            ],
          ),
        )
    );
  }
}
