import 'package:flutter/material.dart';
import 'package:sephora_project/register/register_screens/register_buat_mpin.dart';

class ContinueButtonAktivasi extends StatelessWidget {
  const ContinueButtonAktivasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 120,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return RegisterBuatMpin();
                    }));
                  },
                  child: Text('Selanjutnya')
              ),
            ],
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10
                )
              ]
          ),
        ),
      ],
    );
  }
}
