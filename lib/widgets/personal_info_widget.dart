import 'package:flutter/material.dart';
import 'package:intro_eeee/constants.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Column(
        children: const [
          Text(
            personalInfo,
            style: TextStyle(
              fontFamily: 'FeatureMono',
              fontSize: 50,
              color: fontYellow,
            ),
          )
        ],
      ),
    );
  }
}
