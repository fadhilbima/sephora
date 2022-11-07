import 'package:flutter/material.dart';

import '../../register/register_screens/register_buat_akun.dart';

class OnBoardingButton extends StatelessWidget {
  const OnBoardingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return RegisterBuatAkun();
              }
          ));
        },
        child: Container(
            height: 40,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Center(
              child: Text('Buat Akun Sekarang', style: TextStyle(fontSize: 14, color: Colors.white),),
            )
        ),
      ),
    );
  }
}
