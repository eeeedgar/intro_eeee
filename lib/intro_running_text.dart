import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:intro_eeee/education_page.dart';
import 'package:intro_eeee/intro_page_card.dart';
import 'package:intro_eeee/navigation_template.dart';
import 'constants.dart';

class IntroRunningText extends StatelessWidget {
  const IntroRunningText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundBlue,
      body: Padding(
        padding:
            const EdgeInsets.only(left: 50, top: 100, right: 50, bottom: 100),
        child: Column(
          children: [
            Flexible(
              flex: 3,
              child: Container(
                alignment: Alignment.center,
                child: AnimatedTextKit(
                  isRepeatingAnimation: false,
                  animatedTexts: [
                    TyperAnimatedText(
                        greetingMessage,
                        curve: Curves.slowMiddle,
                        textStyle: const TextStyle(
                          fontFamily: 'FeatureMono',
                          color: fontYellow,
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
                child: GestureDetector(
                  child: TextLiquidFill(
                    loadUntil: 0.8,
                    waveDuration: const Duration(seconds: 3),
                    loadDuration: const Duration(seconds: 2),
                    text: greetingQuestion,
                    textAlign: TextAlign.center,
                    textStyle: const TextStyle(
                      fontFamily: 'FeatureMono',
                      fontSize: 50,
                    ),
                    waveColor: fontYellow,
                    boxBackgroundColor: Colors.blueGrey,
                  ),
                  onTap: () => {
                    Navigator.of(context)
                        .push(getRoute(const EducationPage(), 'down'))
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
