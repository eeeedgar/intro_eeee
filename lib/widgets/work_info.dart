import 'package:flutter/material.dart';
import 'package:intro_eeee/constants.dart';

class WorkInfo extends StatelessWidget {
  const WorkInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.only(left: 8, right: 8, top: 20, bottom: 8),
            child: Text(
              'Flutter-developer',
              style: TextStyle(
                fontFamily: 'FeatureMono',
                fontSize: 30,
                color: fontYellow,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              '> Vintelligent',
              style: TextStyle(
                fontFamily: 'FeatureMono',
                fontSize: 25,
                color: fontYellow,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              '> january - may 2022',
              style: TextStyle(
                fontFamily: 'FeatureMono',
                fontSize: 25,
                color: fontYellow,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
