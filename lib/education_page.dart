import 'package:blinking_text/blinking_text.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundBlue,
      body: Row(
        children: [
          Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: const [
                      Text(
                        'left',
                        style: TextStyle(
                          fontFamily: 'FeatureMono',
                          fontSize: 50,
                          color: fontYellow,
                        ),
                      ),
                      BlinkText('Blink', style: TextStyle(
                        fontFamily: 'FeatureMono',
                        fontSize: 50,
                        color: fontYellow,
                      ),
                      endColor: Colors.red,
                      duration: Duration(milliseconds: 500),)
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
}
