import 'package:flutter/material.dart';

class NotificationTransactionDisplay extends StatelessWidget {
  const NotificationTransactionDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('12 November 2022'),
            NotificationBody(transactionType: TransactionType.keluar),
            NotificationBody(transactionType: TransactionType.masuk),
            NotificationBody(transactionType: TransactionType.pembayaran),
            NotificationBody(transactionType: TransactionType.pembelian),
            NotificationBody(transactionType: TransactionType.pembelian),
            NotificationBody(transactionType: TransactionType.pembelian),
            NotificationBody(transactionType: TransactionType.pembelian),
          ],
        ),
      ),
    );
  }
}

enum TransactionType{
  keluar,
  masuk,
  pembelian,
  pembayaran
}

class NotificationBody extends StatelessWidget {
  const NotificationBody({Key? key, required this.transactionType}) : super(key: key);

  final TransactionType transactionType;
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        late String labelText;
        late Icon icon;
        if(transactionType==TransactionType.keluar){
          labelText='Transaksi Keluar';
          icon=Icon(Icons.arrow_upward, size: 14,);
        } else if(transactionType==TransactionType.masuk) {
          labelText='Transaksi Masuk';
          icon= Icon(Icons.arrow_downward_rounded, size: 14,);
        } else if (transactionType==TransactionType.pembayaran) {
          labelText='Pembayaran';
          icon=Icon(Icons.payment, size: 14,);
        } else if (transactionType==TransactionType.pembelian){
          labelText='Pembelian';
          icon=Icon(Icons.money_off, size: 14,);
        } return Column(
          children: [
            Container(
                padding: EdgeInsets.only(left: 15, top: 15, bottom: 15, right: 15),
                margin: EdgeInsets.symmetric(vertical: 7.5),
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
                                Text(labelText),
                                SizedBox(width: 2),
                                SizedBox(height: 16, width: 16, child: icon,),
                              ],
                            ),
                          ),
                        ),
                        Text('14 : 30')
                      ],
                    ),
                    SizedBox(height: 13),
                    Row(
                      children: [
                        Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Color(0xFFF3F7FD),
                                borderRadius: BorderRadius.circular(12)
                            ),
                            child: Center(
                              child: Container(
                                height: 18,
                                width: 21,
                                child: Image.asset('assets/icons/bri.png'),
                              ),
                            )
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 40,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Ahmad Alfiansyah'),
                              Text('1500000')
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                )
            )
          ],
        );
      },
    );
  }
}
