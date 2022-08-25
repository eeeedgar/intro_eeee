import 'package:flutter/material.dart';
import 'package:intro_eeee/constants.dart';

class WorkInfoSmall extends StatelessWidget {
  const WorkInfoSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundBlue,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: MaterialButton(
        minWidth: 200,
        height: 100,
        color: Colors.black38,
        highlightColor: Colors.black54,
        splashColor: const Color(0x00000000),
        onPressed: () => Navigator.of(context).pop(),
        child: const Text(
          'back',
          style: TextStyle(
            fontFamily: 'FeatureMono',
            color: fontYellow,
            fontSize: 30,
          ),
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: Container(
          alignment: Alignment.topLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 20, right: 8, top: 20, bottom: 8),
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
        ),
      ),
    );
  }
}


class WorkInfoLarge extends StatelessWidget {
  const WorkInfoLarge({Key? key}) : super(key: key);

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
