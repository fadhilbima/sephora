import 'package:flutter/material.dart';

class CardMenu extends StatelessWidget {
  const CardMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 80,
        margin: EdgeInsets.symmetric(horizontal: 13),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Color(0xFFBCC8E7),
                blurRadius: 10
              )
            ]
          ),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          height: 51,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 51,
                width: 55,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 25,
                      width: 25,
                      margin: EdgeInsets.only(top: 2),
                      child: Image.asset('assets/icons/transfer.png'),
                    ),
                    Text('Transfer', style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400),)
                  ],
                )
              ),
              Container(
                height: 51,
                width: 55,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 25,
                      width: 25,
                      margin: EdgeInsets.only(top: 2),
                      child: Image.asset('assets/icons/wallet.png'),
                    ),
                    Text('E-Wallet', style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400),)
                  ],
                ),
              ),
              Container(
                height: 51,
                width: 55,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 25,
                      width: 25,
                      margin: EdgeInsets.only(top: 2),
                      child: Image.asset('assets/icons/cart.png'),
                    ),
                    Text('Pembelian', style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400),)
                  ],
                ),
              ),
              Container(
                height: 51,
                width: 55,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 25,
                      width: 25,
                      margin: EdgeInsets.only(top: 2),
                      child: Image.asset('assets/icons/multimedia.png'),
                    ),
                    Text('Lainya', style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400),)
                  ],
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
