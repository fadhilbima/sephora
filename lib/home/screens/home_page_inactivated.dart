import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sephora_project/home/home_widgets/bank_card.dart';
import 'package:sephora_project/home/home_widgets/curved_bottom_bar.dart';
import 'package:sephora_project/home/home_widgets/daftar_favorit.dart';
import 'package:sephora_project/home/home_widgets/history_display.dart';
import 'package:sephora_project/home/home_widgets/history_item.dart';
import 'package:sephora_project/home/home_widgets/user_profile.dart';
import 'package:sephora_project/home/home_widgets/warning_inactivated.dart';

class HomieInactivated extends StatefulWidget {
  const HomieInactivated({Key? key}) : super(key: key);

  @override
  State<HomieInactivated> createState() => _HomieInactivatedState();
}

class _HomieInactivatedState extends State<HomieInactivated> {
  var _bottomActive = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F7FD),
      body: Column(
        children: [
          Container(
            height: 120,
            padding: EdgeInsets.only(top: 59, left: 20, right: 39),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                UserProfile(),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 100),
                  child: Column(
                    children: [
                      WarningInactivated(),
                      SizedBox(height: 19),
                      BankCard(),
                      SizedBox(height: 40,),
                      Container(
                        height: 121,
                        child: DaftarFavorit(),
                      ),
                      SizedBox(height: 50),
                      HistoryDisp(),
                    ],
                  ),
                )
            ),
          ),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 12,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          height: 90,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavbarTextIcon(
                  icon: Icon(Icons.home, size: 30,), label: Text('Beranda'), onPress: (){}
              ),
              NavbarTextIcon(
                  icon: Icon(Icons.receipt_rounded, size: 30,), label: Text('Mutasi'), onPress: (){}
              ),
              NavbarTextIcon(
                  icon: Container(height: 24, width: 24,), label: Text('Transfer'), onPress: (){}
              ),
              NavbarTextIcon(
                  icon: Icon(Icons.star_border_rounded, size: 30,), label: Text('Favorite'), onPress: (){}
              ),
              NavbarTextIcon(
                  icon: Icon(Icons.person_outline_rounded, size: 30,), label: Text('Profile'), onPress: (){}
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){}, 
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class NavbarTextIcon extends StatelessWidget {
  NavbarTextIcon({Key? key, this.icon, required this.label, required this.onPress}) : super(key: key);
  late Text label;
  final VoidCallback onPress;
  Widget? icon;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: 51,
        width: 54,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            icon!,
            label,
          ],
        ),
      ),
    );
  }
}
