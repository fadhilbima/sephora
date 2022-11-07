import 'package:flutter/material.dart';

class AgreeDisagreeButton extends StatelessWidget {
  const AgreeDisagreeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 22),
          child: InkWell(
            onTap: (){
            },
            child: Container(
              height: 40,
              width: 335,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 157.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xFF2F82FF))
                    ),
                    child: Center(
                      child: Text('Tidak', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Color(0xFF2F82FF))),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 157.5,
                    decoration: BoxDecoration(
                      color: Color(0xFF2F82FF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text('Setuju', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white)),
                    ),
                  ),
                ],
              ),
            )
          ),
        )
      ],
    );
  }
}
