import 'package:flutter/material.dart';
import 'package:intro_eeee/constants.dart';

class BlinkIcon extends StatefulWidget{
  @override
  _BlinkIconState createState() => _BlinkIconState();
}
class _BlinkIconState extends State<BlinkIcon> with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;
  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _colorAnimation = ColorTween(begin: fontYellow, end: Colors.red)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.linear));
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
      setState(() {});
    });
    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Icon(Icons.info_outline, size: 50, color: _colorAnimation.value,);
      },
    );
  }
}