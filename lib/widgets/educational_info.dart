import 'package:flutter/material.dart';
import 'package:intro_eeee/constants.dart';

class EducationalInfo extends StatelessWidget {
  const EducationalInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Column(
        children: const [
          Text(
            educationalInfo,
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
