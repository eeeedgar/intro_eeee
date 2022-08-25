import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:intro_eeee/menu_page.dart';
import 'package:intro_eeee/navigation_template.dart';
import 'package:intro_eeee/widgets/blink.dart';
import 'constants.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 700) {
        return const IntroSmall();
      } else {
        return const IntroLarge();
      }
    });
  }
}

class IntroSmall extends StatelessWidget {
  const IntroSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundBlue,
      body: Padding(
        padding:
            const EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 20),
        child: Column(
          children: [
            Flexible(
              flex: 3,
              child: Container(
                alignment: Alignment.center,
                child: AnimatedTextKit(
                  isRepeatingAnimation: false,
                  animatedTexts: [
                    TyperAnimatedText(greetingMessage,
                        curve: Curves.slowMiddle,
                        textStyle: const TextStyle(
                          fontFamily: 'FeatureMono',
                          color: fontYellow,
                          fontSize: 40,
                          fontWeight: FontWeight.normal,
                        )),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: MaterialButton(
                minWidth: 500,
                height: 250,
                color: Colors.black38,
                highlightColor: Colors.black54,
                splashColor: const Color(0x00000000),
                child: getBlinkText('wanna know\nabout me?'),
                onPressed: () =>
                    Navigator.of(context).push(getRoute(const Menu(), 'down')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class IntroLarge extends StatelessWidget {
  const IntroLarge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundBlue,
      body: Padding(
        padding:
            const EdgeInsets.only(left: 50, top: 50, right: 50, bottom: 50),
        child: Column(
          children: [
            Flexible(
              flex: 3,
              child: Container(
                alignment: Alignment.center,
                child: AnimatedTextKit(
                  isRepeatingAnimation: false,
                  animatedTexts: [
                    TyperAnimatedText(greetingMessage,
                        curve: Curves.slowMiddle,
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.normal,
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
              child: MaterialButton(
                minWidth: 500,
                height: 250,
                color: Colors.black38,
                highlightColor: Colors.black54,
                splashColor: const Color(0x00000000),
                child: getBlinkText('wanna know\nabout me?'),
                onPressed: () =>
                    Navigator.of(context).push(getRoute(const Menu(), 'down')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
