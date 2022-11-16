import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:sephora_project/register/register.dart';
import 'package:sephora_project/register/register_widgets/card_items/fifth_page_card_item/agreement_expandable.dart';
import 'package:sephora_project/register/register_widgets/card_items/fifth_page_card_item/checkbox.dart';
import 'package:sephora_project/register/register_widgets/card_items/first_page_card_item/card_title.dart';

class PermissionCard extends StatelessWidget {
  PermissionCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 108),
          height: 540,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Color(0xFFBCC8E7),
                    blurRadius: 10,
                    spreadRadius: 0,
                    offset: Offset(0, 3)
                )
              ]
          ),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: PermissionCardTitle(),
              ),
              Padding(
                padding: EdgeInsets.only(top: 93),
                child: Divider(
                  indent: 20,
                  endIndent: 20,
                  thickness: 1.0,
                  color: Color(0xFFE9F0FF),
                ),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(20, 118, 10, 60),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ExpandableAgreement(),
                        ExpandableAgreement(),
                        ExpandableAgreement(),
                        ExpandableAgreement(),
                        ExpandableAgreement(),
                      ],
                    ),
                  )
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    PermissionValidate()
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}
