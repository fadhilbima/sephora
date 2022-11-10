import 'package:flutter/material.dart';
import 'package:sephora_project/register/register_screens/register_buat_mpin.dart';

class ContinueButtonAktivasi extends StatelessWidget {
  const ContinueButtonAktivasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 22),
          child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context){
                    return RegisterBuatMpin();
                  }
              ));
            },
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: Color(0xFF2F82FF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text('Selanjutnya', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white)),
              ),
            ),
          ),
        )
      ],
    );
  }
}
