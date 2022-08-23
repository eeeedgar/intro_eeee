import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class IntroCardPage extends StatefulWidget {
  const IntroCardPage({Key? key}) : super(key: key);

  @override
  State<IntroCardPage> createState() => _IntroCardPageState();
}

class _IntroCardPageState extends State<IntroCardPage> {
  bool _isFlipped = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              FlipCard(
                onFlip: () => {
                  if (!_isFlipped)
                    setState(() {
                      _isFlipped = true;
                    })
                },
                fill: Fill.fillBack,
                front: Container(
                    height: 200,
                    width: 200,
                    color: Colors.greenAccent,
                    alignment: Alignment.center,
                    child: Text('my name is Edgar')),
                back: Container(
                    height: 200,
                    width: 200,
                    color: Colors.blueGrey,
                    alignment: Alignment.center,
                    child: Text('and I am a Flutter-dev')),
              ),
              (_isFlipped) ?
              IconButton(onPressed: () => {}, icon: const Icon(Icons.arrow_downward_outlined),)
                  : const SizedBox(height: 10,)
            ],
          ),
        ),
      ),
    );
  }
}

Widget spamCard() {
  return FlipCard(
    fill: Fill.fillBack,
    front: Container(
        height: 200,
        width: 200,
        color: Colors.greenAccent,
        alignment: Alignment.center,
        child: Text('my name is Edgar')),
    back: Container(
        height: 200,
        width: 200,
        color: Colors.blueGrey,
        alignment: Alignment.center,
        child: Text('and I am a Flutter-dev')),
  );
}
