import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:intro_eeee/intro_page.dart';
import 'package:intro_eeee/navigation_template.dart';

const cardHeight = 150.0;
const cardWidth = 350.0;

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
      body: Container(
        color: Colors.brown,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Flexible(
                  flex: 8,
                  child: Container(
                    color: Colors.blueGrey,
                    child: Center(
                      child: FlipCard(
                        speed: 1000,
                        onFlip: () => {
                          if (!_isFlipped)
                            setState(() {
                              _isFlipped = true;
                            })
                        },
                        fill: Fill.fillBack,
                        front: getCardSide('my name is Edgar'),
                        back: getCardSide('I am a Flutter-dev'),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    color: Colors.green,
                    child: Center(
                      child: Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          IconButton(
                            onPressed: () => {
                              Navigator.of(context)
                                  .push(getRoute(IntroPage(), 'kek'))
                            },
                            icon: const Icon(
                              Icons.arrow_downward_outlined,
                            ),
                          ),
                          if (!_isFlipped)
                            Center(
                              child: Container(
                                height: 100,
                                width: 100,
                                color: Colors.blueGrey,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
Widget getCardSide(String text) {
  return Container(
    decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
          ),
        ],
        color: Colors.white,
        borderRadius:
        BorderRadius.all(Radius.circular(20))),
    height: cardHeight,
    width: cardWidth,
    alignment: Alignment.center,
    child: Text(
      text,
      style: const TextStyle(fontSize: 40, fontFamily: 'FeatureMono'),
    ),
  );
}