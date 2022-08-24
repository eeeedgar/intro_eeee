import 'dart:math';

import 'package:blinking_text/blinking_text.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:intro_eeee/BlinkIcon.dart';
import 'constants.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int randomFactNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundBlue,
      body: Row(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      GestureDetector(
                        child: const Text(
                          'back',
                          style: TextStyle(
                            fontFamily: 'FeatureMono',
                            fontSize: 50,
                            color: fontYellow,
                          ),
                        ),
                        onTap: () => Navigator.of(context).pop(),
                      ),
                      getButtonWithText(
                        'education',
                        () => Navigator.of(context).pop(),
                      ),
                      GestureDetector(
                        child: const Text(
                          randomInfoButton,
                          style: TextStyle(
                            fontFamily: 'FeatureMono',
                            fontSize: 50,
                            color: fontYellow,
                          ),
                        ),
                        onTap: () => _showFloatingFlushBar(context),
                      ),
                    ],
                  ),
                ),
                const VerticalDivider(
                  thickness: 10,
                  color: fontYellow,
                ),
              ],
            ),
          ),
          const Flexible(
            flex: 3,
            child: Center(
              child: Text(
                'right',
                style: TextStyle(
                  fontFamily: 'FeatureMono',
                  fontSize: 50,
                  color: fontYellow,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showFloatingFlushBar(BuildContext context) {

    String fact;

    if (facts.isEmpty)
      {
        fact = 'there is no facts, only interpretations';
      }
    else {
      fact = facts[randomFactNumber++];
      if (randomFactNumber == facts.length) {
        randomFactNumber = 0;
      }
    }

    Flushbar(
      padding: const EdgeInsets.all(40),
      messageText: Center(
        child: Text(
          fact,
          style: const TextStyle(
            fontFamily: 'FeatureMono',
            color: fontYellow,
            fontSize: 30,
          ),
        ),
      ),
      //message: 'lol',
      backgroundColor: Colors.blueGrey,
      duration: const Duration(seconds: 3),
      margin: const EdgeInsets.all(20),
      icon:
      // const Icon(
      //   Icons.info_outline,
      //   color: fontYellow,
      // ),
      BlinkIcon(),
    ).show(context);
  }
}

BlinkText getBlinkText(String text) {
  return BlinkText(
    text,
    style: const TextStyle(
      fontFamily: 'FeatureMono',
      fontSize: 50,
      color: fontYellow,
    ),
    endColor: Colors.red,
    duration: const Duration(milliseconds: 500),
  );
}


getButtonWithText(String text, Function onPressed) {
  return GestureDetector(
    child: Text(
      text,
      style: const TextStyle(
        fontFamily: 'FeatureMono',
        fontSize: 50,
        color: fontYellow,
      ),
    ),
    onTap: () => onPressed(),
  );
}
