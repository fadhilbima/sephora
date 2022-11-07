import 'package:flutter/material.dart';

class OtpKeyboard extends StatelessWidget {
  const OtpKeyboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 315,
      width: 290,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Color(0xFFF3F7FD),
                  borderRadius: BorderRadius.circular(100)
                ),
                child: Center(
                  child: Text('1', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),),
                )
              ),
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    color: Color(0xFFF3F7FD),
                    borderRadius: BorderRadius.circular(100)
                ),
                child: Center(
                  child: Text('2', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),),
                )
              ),
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    color: Color(0xFFF3F7FD),
                    borderRadius: BorderRadius.circular(100)
                ),
                child: Center(
                  child: Text('3', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),),
                )
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    color: Color(0xFFF3F7FD),
                    borderRadius: BorderRadius.circular(100)
                ),
                child: Center(
                  child: Text('4', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),),
                )
              ),
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Color(0xFFF3F7FD),
                  borderRadius: BorderRadius.circular(100)
                ),
                child: Center(
                  child: Text('5', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),),
                )
              ),
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Color(0xFFF3F7FD),
                  borderRadius: BorderRadius.circular(100)
                ),
                child: Center(
                  child: Text('6', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),),
                )
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Color(0xFFF3F7FD),
                  borderRadius: BorderRadius.circular(100)
                ),
                child: Center(
                  child: Text('7', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),),
                )
              ),
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Color(0xFFF3F7FD),
                  borderRadius: BorderRadius.circular(100)
                ),
                child: Center(
                  child: Text('8', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),),
                )
              ),
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Color(0xFFF3F7FD),
                  borderRadius: BorderRadius.circular(100)
                ),
                child: Center(
                  child: Text('9', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 175,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Color(0xFFF3F7FD),
                          borderRadius: BorderRadius.circular(100)
                      ),
                      child: Center(
                        child: Text('0', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      child: Center(
                        child: Image.asset('assets/icons/delete.png'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
