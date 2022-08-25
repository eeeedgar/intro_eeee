import 'package:flutter/material.dart';
import 'package:intro_eeee/constants.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 700 || constraints.maxHeight < 700) {
        return const PersonalInfoSmall();
      } else {
        return const PersonalInfoLarge();
      }
    });
  }
}

class PersonalInfoSmall extends StatelessWidget {
  const PersonalInfoSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundBlue,
      body: Container(
          alignment: Alignment.topLeft,
          child: Table(
            children: const [
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.only(left: 8, right: 8, top: 20, bottom: 8),
                  child: Text(
                    'First name:',
                    style: TextStyle(
                      fontFamily: 'FeatureMono',
                      fontSize: 20,
                      color: fontYellow,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8, right: 8, top: 20, bottom: 8),
                  child: Text(
                    'Edgar',
                    style: TextStyle(
                      fontFamily: 'FeatureMono',
                      fontSize: 20,
                      color: fontYellow,
                    ),
                  ),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Last name:',
                    style: TextStyle(
                      fontFamily: 'FeatureMono',
                      fontSize: 20,
                      color: fontYellow,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Rakhmankulov',
                    style: TextStyle(
                      fontFamily: 'FeatureMono',
                      fontSize: 20,
                      color: fontYellow,
                    ),
                  ),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Place of residence:',
                    style: TextStyle(
                      fontFamily: 'FeatureMono',
                      fontSize: 20,
                      color: fontYellow,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Saint-Petersburg, Russia',
                    style: TextStyle(
                      fontFamily: 'FeatureMono',
                      fontSize: 20,
                      color: fontYellow,
                    ),
                  ),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Date of birth:',
                    style: TextStyle(
                      fontFamily: 'FeatureMono',
                      fontSize: 20,
                      color: fontYellow,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '30/07/2002 (20 y.o.)',
                    style: TextStyle(
                      fontFamily: 'FeatureMono',
                      fontSize: 20,
                      color: fontYellow,
                    ),
                  ),
                ),
              ]),
            ],
          )),
    );
  }
}


class PersonalInfoLarge extends StatelessWidget {
  const PersonalInfoLarge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundBlue,
        alignment: Alignment.topLeft,
        child: Table(
          children: const [
            TableRow(children: [
              Padding(
                padding: EdgeInsets.only(left: 8, right: 8, top: 20, bottom: 8),
                child: Text(
                  'First name:',
                  style: TextStyle(
                    fontFamily: 'FeatureMono',
                    fontSize: 20,
                    color: fontYellow,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8, right: 8, top: 20, bottom: 8),
                child: Text(
                  'Edgar',
                  style: TextStyle(
                    fontFamily: 'FeatureMono',
                    fontSize: 20,
                    color: fontYellow,
                  ),
                ),
              ),
            ]),
            TableRow(children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Last name:',
                  style: TextStyle(
                    fontFamily: 'FeatureMono',
                    fontSize: 20,
                    color: fontYellow,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Rakhmankulov',
                  style: TextStyle(
                    fontFamily: 'FeatureMono',
                    fontSize: 20,
                    color: fontYellow,
                  ),
                ),
              ),
            ]),
            TableRow(children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Place of residence:',
                  style: TextStyle(
                    fontFamily: 'FeatureMono',
                    fontSize: 20,
                    color: fontYellow,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Saint-Petersburg, Russia',
                  style: TextStyle(
                    fontFamily: 'FeatureMono',
                    fontSize: 20,
                    color: fontYellow,
                  ),
                ),
              ),
            ]),
            TableRow(children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Date of birth:',
                  style: TextStyle(
                    fontFamily: 'FeatureMono',
                    fontSize: 20,
                    color: fontYellow,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '30/07/2002 (20 y.o.)',
                  style: TextStyle(
                    fontFamily: 'FeatureMono',
                    fontSize: 20,
                    color: fontYellow,
                  ),
                ),
              ),
            ]),
          ],
        ));
  }
}
