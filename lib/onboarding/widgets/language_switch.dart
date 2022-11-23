import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageSwitch extends StatefulWidget {
  LanguageSwitch({Key? key, required this.isID, required this.stage}) : super(key: key);

  final bool stage;
  final Function(bool) isID;
  @override
  State<LanguageSwitch> createState() => _LanguageSwitchState();
}

class _LanguageSwitchState extends State<LanguageSwitch>
    with SingleTickerProviderStateMixin {
  final _switchWidth = 45.0;
  final _switchHeight = 16.0;
  final _circleSize = 30.0;
  final _containerHeight = 30.0;
  final _animationDuration = 100;
  bool _isID = false;

  late AnimationController _animationController;
  late Animation _horizontalMovementAnimation;
  late SharedPreferences prefs;


  @override
  void initState() {
    _isID = widget.stage;
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: _animationDuration),
    );
    _horizontalMovementAnimation = Tween<double>(
      begin: 0.0,
      end: _switchWidth - _circleSize,
    ).animate(_animationController);
    _animationController.addListener(() {
      setState(() {});
    });
    (widget.stage);
    if(widget.stage==true) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _switchWidth,
      height: _containerHeight,
      child: GestureDetector(
        onTap: (){
          setState(() {
            _isID = !_isID;
            widget.isID(_isID);
            if (_isID) {
              _animationController.forward();
              print(_isID);
            } else {
              _animationController.reverse();
              print(_isID);
            }
          });

        },
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                width: _switchWidth,
                height: _switchHeight,
                decoration: BoxDecoration(
                    color: Color(0xFFDAE9FF),
                    border: Border.all(color: Color(0xFF98C1FF)),
                    borderRadius: BorderRadius.circular(_switchHeight)
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: _horizontalMovementAnimation.value),
                width: _circleSize,
                height: _circleSize,
                decoration: BoxDecoration(
                    color: Color(0xFF2F82FF),
                    border: Border.all(color: Colors.white),
                    shape: BoxShape.circle
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    _isID ? 'EN' : 'ID',
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}