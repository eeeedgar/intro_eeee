import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:blinking_text/blinking_text.dart';
import 'package:flutter/material.dart';
import 'package:intro_eeee/menu_page.dart';
import 'package:intro_eeee/navigation_template.dart';
import 'package:intro_eeee/widgets/blink.dart';
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
              child: GestureDetector(
                child: Container(
                      color: Colors.blueGrey,
                      alignment: Alignment.center,
                      width: 700,

                      child: getBlinkText(greetingQuestion)
                    ),
                onTap: () => {
                  Navigator.of(context)
                      .push(getRoute(const MenuPage(), 'down'))
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
