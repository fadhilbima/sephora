import 'package:flutter/material.dart';

class LanguageSwitch extends StatefulWidget {
  const LanguageSwitch({Key? key, required this.isEN}) : super(key: key);

  final Function(bool) isEN;
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
  bool _isEN = false;

  late AnimationController _animationController;
  late Animation _horizontalMovementAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: _animationDuration),
    );
    _horizontalMovementAnimation = Tween<double>(
      begin: _switchWidth - _circleSize,
      end: 0.0,
    ).animate(_animationController);
    _animationController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _switchWidth,
      height: _containerHeight,
      child: GestureDetector(
        onTap: (){
          setState(() => _isEN = !_isEN);
          widget.isEN(_isEN);
          if (_isEN) {
            _animationController.forward();
          } else {
            _animationController.reverse();
          }
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
                  _isEN ? 'ID' : 'EN',
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