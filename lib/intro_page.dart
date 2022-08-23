import 'package:flutter/material.dart';
import 'package:intro_eeee/bio_page.dart';
import 'package:intro_eeee/colors.dart';
import 'package:intro_eeee/game_page.dart';
import 'package:intro_eeee/intro_page_card.dart';
import 'package:intro_eeee/navigation_template.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  Offset _offset = Offset.zero; // changed

  @override
  Widget build(BuildContext context) {
    return NavigationTemplate(
      data: GestureDetector(
        onDoubleTap: () => setState(() => _offset = Offset.zero),
        child: Container(
          color: const Color(0x0f000f0f),
          alignment: Alignment.center,
          child: Transform(
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001) // perspective
              ..rotateX(0.01 * _offset.dy) // changed
              ..rotateY(-0.01 * _offset.dx), // changed
            alignment: FractionalOffset.center,
            child: GestureDetector(
              // new
              onPanUpdate: (details) => setState(() => _offset += details.delta),
              // onDoubleTap: () => setState(() => _offset = Offset.zero),
              child: const Text(
                'Hello, I am Edgar',
                style: TextStyle(fontSize: 100),
              ),
            ),
          ),
        ),
      ),
      up: () => Navigator.of(context)
          .pushReplacement(getRoute(const BioPage(), 'up')),
      right: () => Navigator.of(context)
          .pushReplacement(getRoute(const GamePage(), 'right')),
      left: () => Navigator.of(context)
          .pushReplacement(getRoute(const IntroCardPage(), 'left')),
    );
  }
}
