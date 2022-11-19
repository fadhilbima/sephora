import 'package:flutter/material.dart';
import 'package:sephora_project/notification/widgets/body_widget/splitbill.dart';

import '../body_widget/transaksi.dart';

enum Tagfill {
  semua,
  info,
  transaksi,
  splitbill,
  keamanan,
}


class TagChips extends StatefulWidget {
  TagChips({Key? key, this.tagfill=Tagfill.semua, required this.controlling, this.activated=false}) : super(key: key);
  late Tagfill tagfill;
  late PageController controlling;
  late bool activated;

  @override
  State<TagChips> createState() => _TagChipsState();
}

class _TagChipsState extends State<TagChips> {

  @override
  void initState() {
    widget.tagfill = Tagfill.semua;
    widget.controlling = PageController();
    widget.activated = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Tags(),
        Body()
      ],
    );
  }

  Widget Tags(){
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: EdgeInsets.only(top: 98, bottom: 10),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 15),
                child: TagColor(
                  labelText: 'Semua',
                  active: widget.tagfill == Tagfill.semua,
                  onPress: () => setState(() {
                    widget.activated = true;
                    widget.tagfill = Tagfill.semua;
                    widget.controlling.animateToPage(
                        widget.tagfill.index,
                        duration: Duration(
                          milliseconds: 200,
                        ),
                        curve: Curves.linear
                    );
                  }),
                ),
              ),
              TagColor(
                labelText: 'Info & Promo',
                active: widget.tagfill == Tagfill.info,
                onPress: () => setState(() {
                  widget.activated = true;
                  widget.tagfill = Tagfill.info;
                  widget.controlling.animateToPage(
                      widget.tagfill.index,
                      duration: Duration(
                        milliseconds: 200,
                      ),
                      curve: Curves.linear
                  );
                }),
              ),
              TagColor(
                labelText: 'Transaksi',
                active: widget.tagfill == Tagfill.transaksi,
                onPress: () => setState(() {
                  widget.activated = true;
                  widget.tagfill = Tagfill.transaksi;
                  widget.controlling.animateToPage(
                      widget.tagfill.index,
                      duration: Duration(
                        milliseconds: 200,
                      ),
                      curve: Curves.linear
                  );
                }),
              ),
              TagColor(
                labelText: 'Split Bill',
                active: widget.tagfill == Tagfill.splitbill,
                onPress: () => setState(() {
                  widget.activated = true;
                  widget.tagfill = Tagfill.splitbill;widget.controlling.animateToPage(
                      widget.tagfill.index,
                      duration: Duration(
                        milliseconds: 200,
                      ),
                      curve: Curves.linear
                  );

                }),
              ),
              Container(
                margin: EdgeInsets.only(right: 15),
                child: TagColor(
                  labelText: 'Keamanan',
                  active: widget.tagfill == Tagfill.keamanan,
                  onPress: () => setState(() {
                    widget.activated = true;
                    widget.tagfill = Tagfill.keamanan;
                    widget.controlling.animateToPage(
                        widget.tagfill.index,
                        duration: Duration(
                          milliseconds: 200,
                        ),
                        curve: Curves.linear
                    );
                  }),
                ),
              )
            ],
          ),
        )
    );
  }

  Widget Body() {
    return Expanded(
      child: GestureDetector(
        onPanDown: (x){
          widget.activated = false;
        },
        child: PageView(
          controller: widget.controlling,
          onPageChanged: (i) {
            setState(() {
              if(!widget.activated) {
                widget.tagfill = Tagfill.values[i];
                widget.controlling.animateToPage(
                  widget.tagfill.index,
                  duration: Duration(
                    milliseconds: 200,
                  ),
                  curve: Curves.linear,
                );
              }
            });
          },
          children: [
            NotificationTransactionDisplay(),
            Container(
              child: Center(
                child: Text('Info & Promo'),
              ),
            ),
            Container(
              child: Center(
                child: Text('Transaksi'),
              ),
            ),
            SplitBillDisplay(),
            Container(
              child: Center(
                child: Text('Keamanan'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




class TagColor extends StatelessWidget {
  const TagColor({Key? key, this.active=false, required this.labelText, this.onPress}) : super(key: key);

  final bool active;
  final String labelText;
  final VoidCallback? onPress;
  @override
  Widget build(BuildContext context) {
    return InkWell(
          onTap: onPress,
          child: Container(
              height: 26,
              margin: EdgeInsets.symmetric(horizontal: 5),
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                  color: active ? Colors.blue : Colors.white,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Center(
                child: Text(
                  labelText,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: active ? Colors.white : Colors.blue
                  ),
                ),
              )
          )
    );
  }
}
