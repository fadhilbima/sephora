import 'package:flutter/material.dart';

class PermissionValidate extends StatefulWidget {
  const PermissionValidate({Key? key}) : super(key: key);

  @override
  State<PermissionValidate> createState() => _PermissionValidateState();
}

class _PermissionValidateState extends State<PermissionValidate> {
  bool uncheck = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white,
        ),
        padding: EdgeInsets.only(left: 10, right: 20),
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              contentPadding: EdgeInsets.only(),
              checkboxShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
              value: uncheck,
              title: Transform.translate(
                offset: Offset(-20, 0),
                child: Text('Saya telah membaca, memahami, dan menyetujui mengenai syarat & ketentuan', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
              ),
              onChanged: (check){
                setState(() {
                  uncheck = check!;
                });
              },
            ),
          ],
        )
    );
  }
}