import 'package:flutter/material.dart';


class AllAppBar extends StatelessWidget {
  const AllAppBar({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: (){
            Navigator.of(context).pop();
            print('back');
          },
          child: Container(
            margin: EdgeInsets.only(left: 20, top: 45),
            height: 32,
            width: 32,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      color: Color(0xFFBCC8E7),
                      blurRadius: 10,
                      spreadRadius: 0,
                      offset: Offset(0, 3)
                  )
                ]
            ),
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: Container(
                  width: 24,
                  height: 24,
                  decoration: const BoxDecoration(
                      color: Colors.white
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 7),
                    child: Image.asset('assets/icons/arrow_back.png'),
                  )
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.only(top: 48),
            child: Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
          )
        )
      ],
    );
  }
}
