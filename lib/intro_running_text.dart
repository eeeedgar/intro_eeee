import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:intro_eeee/intro_page_card.dart';
import 'package:intro_eeee/navigation_template.dart';

class IntroRunningText extends StatelessWidget {
  const IntroRunningText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1f1c9e),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 50, top: 100, right: 50, bottom: 100),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 3,
              child: Container(
                // color: Colors,
                alignment: Alignment.center,
                child: AnimatedTextKit(
                  isRepeatingAnimation: false,
                  animatedTexts: [
                    TyperAnimatedText(
                        'hello, my name is Edgar\nI am a Flutter-developer',
                        curve: Curves.slowMiddle,
                        textStyle: const TextStyle(
                          fontFamily: 'FeatureMono',
                          color: Color(0xffe6f032),
                          fontSize: 50,
                        )),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                // color: Colors.red,
                child: GestureDetector(
                  child: TextLiquidFill(
                    loadDuration: const Duration(seconds: 2),
                    text: 'wanna know about me?',
                    textAlign: TextAlign.center,
                    textStyle: const TextStyle(
                      fontFamily: 'FeatureMono',
                      fontSize: 50,
                    ),
                    waveColor: const Color(0xffe6f032),
                    boxBackgroundColor: Colors.blueGrey,
                  ),
                  onTap: () => {
                    Navigator.of(context)
                        .push(getRoute(const IntroCardPage(), 'down'))
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
