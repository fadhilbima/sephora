import 'package:flutter/material.dart';

import '../../register/register_screens/register_buat_akun.dart';

class OnBoardingButton extends StatelessWidget {
  const OnBoardingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return RegisterBuatAkun();
          }));
        },
        child: Text('Buat Akun Sekarang'),
      )
    );
  }
}
