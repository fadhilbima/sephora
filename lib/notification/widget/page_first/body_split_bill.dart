import 'package:flutter/material.dart';
import 'package:sephora_project/notification/widget/page_first/notification_appbar.dart';

import 'notification_tag.dart';


class SplitBill extends StatelessWidget {
  const SplitBill({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF3F7FD),
        body: Stack(
          children: [
            TitleDisplay(),
            Padding(
              padding: EdgeInsets.only(top: 98),
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      NotifTag(
                        text: 'Semua',
                        active: Active.putih,
                        onPress: (){},
                      ),
                      NotifTag(
                        text: 'Info & Promo',
                        active: Active.putih,
                        onPress: (){},
                      ),
                      NotifTag(
                        text: 'Transaksi',
                        active: Active.putih,
                        onPress: (){},
                      ),
                      NotifTag(
                        text: 'Split Bill',
                        active: Active.biru,
                        onPress: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return SplitBill();
                          }));
                        },
                      ),
                      NotifTag(
                        text: 'Keamanan',
                        active: Active.putih,
                        onPress: (){},
                      ),
                    ],
                  )
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 154),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Container(
                          padding: EdgeInsets.only(left: 15, top: 15, bottom: 15, right: 15),
                          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(188, 200, 231, 0.25),
                                    blurRadius: 10
                                )
                              ]
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      child: Row(
                                        children: [
                                          Text('Tagihan Split Bill'),
                                          SizedBox(width: 2),
                                          SizedBox(height: 16, width: 16),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Text('14 : 30')
                                ],
                              ),
                              SizedBox(height: 12),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 104),
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius: BorderRadius.circular(40),
                                            border: Border.all(width: 2, color: Colors.white)
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 78),
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            color: Colors.orange,
                                            borderRadius: BorderRadius.circular(40),
                                            border: Border.all(width: 2, color: Colors.white)
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 52),
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            color: Colors.pink,
                                            borderRadius: BorderRadius.circular(40),
                                            border: Border.all(width: 2, color: Colors.white)
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 26),
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius: BorderRadius.circular(40),
                                            border: Border.all(width: 2, color: Colors.white)
                                        ),
                                      ),
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.circular(40),
                                            border: Border.all(width: 2)
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ],
                          )
                      ),
                      Container(
                          padding: EdgeInsets.only(left: 15, top: 15, bottom: 15, right: 15),
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(188, 200, 231, 0.25),
                                    blurRadius: 10
                                )
                              ]
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      child: Row(
                                        children: [
                                          Text('Tagihan Split Bill'),
                                          SizedBox(width: 2),
                                          SizedBox(height: 16, width: 16),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Text('14 : 30')
                                ],
                              ),
                              SizedBox(height: 12),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 104),
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius: BorderRadius.circular(40),
                                            border: Border.all(width: 2, color: Colors.white)
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 78),
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            color: Colors.orange,
                                            borderRadius: BorderRadius.circular(40),
                                            border: Border.all(width: 2, color: Colors.white)
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 52),
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            color: Colors.pink,
                                            borderRadius: BorderRadius.circular(40),
                                            border: Border.all(width: 2, color: Colors.white)
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 26),
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius: BorderRadius.circular(40),
                                            border: Border.all(width: 2, color: Colors.white)
                                        ),
                                      ),
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.circular(40),
                                            border: Border.all(width: 2)
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ],
                          )
                      )
                    ],
                  ),
                )
            ),
          ],
        )
    );
  }
}
