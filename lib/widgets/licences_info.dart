import 'package:flutter/material.dart';
import 'package:intro_eeee/constants.dart';

class LicencesInfo extends StatelessWidget {
  const LicencesInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Column(
        children: const [
          Padding(
            padding: EdgeInsets.fromLTRB(8, 20, 8, 8),
            child: Text(
              fontLicence,
              style: TextStyle(
                fontFamily: 'FeatureMono',
                fontSize: 30,
                color: fontYellow,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
