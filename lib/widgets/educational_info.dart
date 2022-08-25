import 'package:flutter/material.dart';
import 'package:intro_eeee/constants.dart';

class EducationalInfoSmall extends StatelessWidget {
  const EducationalInfoSmall({Key? key}) : super(key: key);

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
      body:
        SafeArea(
          bottom: false,
          child: Container(
            alignment: Alignment.topLeft,
            child: Table(
              children: const [
                TableRow(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 8, bottom: 8, top: 20),
                      child: Text(
                        'University:',
                        style: TextStyle(
                          color: fontYellow,
                          fontFamily: 'FeatureMono',
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8, right: 8, bottom: 8, top: 20),
                      child: Text(
                        'ITMO',
                        style: TextStyle(
                          color: fontYellow,
                          fontFamily: 'FeatureMono',
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Faculty:',
                        style: TextStyle(
                          color: fontYellow,
                          fontFamily: 'FeatureMono',
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Information Systems',
                        style: TextStyle(
                          color: fontYellow,
                          fontFamily: 'FeatureMono',
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Faculty (rus):',
                        style: TextStyle(
                          color: fontYellow,
                          fontFamily: 'FeatureMono',
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'ИТИП - ИС',
                        style: TextStyle(
                          color: fontYellow,
                          fontFamily: 'FeatureMono',
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Degree:',
                        style: TextStyle(
                          color: fontYellow,
                          fontFamily: 'FeatureMono',
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Undergraduate',
                        style: TextStyle(
                          color: fontYellow,
                          fontFamily: 'FeatureMono',
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Graduation year:',
                        style: TextStyle(
                          color: fontYellow,
                          fontFamily: 'FeatureMono',
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '2024',
                        style: TextStyle(
                          color: fontYellow,
                          fontFamily: 'FeatureMono',
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding:
                      EdgeInsets.only(left: 8.0, right: 8, bottom: 8, top: 40),
                      child: Text(
                        'School:',
                        style: TextStyle(
                          color: fontYellow,
                          fontFamily: 'FeatureMono',
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                      EdgeInsets.only(left: 8.0, right: 8, bottom: 8, top: 40),
                      child: Text(
                        'Presidential Physics and Mathematics Lyceum №239',
                        style: TextStyle(
                          color: fontYellow,
                          fontFamily: 'FeatureMono',
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
    );
  }
}


class EducationalInfoLarge extends StatelessWidget {
  const EducationalInfoLarge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Table(
        children: const [
          TableRow(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8, right: 8, bottom: 8, top: 20),
                child: Text(
                  'University:',
                  style: TextStyle(
                    color: fontYellow,
                    fontFamily: 'FeatureMono',
                    fontSize: 30,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8, right: 8, bottom: 8, top: 20),
                child: Text(
                  'ITMO',
                  style: TextStyle(
                    color: fontYellow,
                    fontFamily: 'FeatureMono',
                    fontSize: 40,
                  ),
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Faculty:',
                  style: TextStyle(
                    color: fontYellow,
                    fontFamily: 'FeatureMono',
                    fontSize: 25,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Information Systems',
                  style: TextStyle(
                    color: fontYellow,
                    fontFamily: 'FeatureMono',
                    fontSize: 35,
                  ),
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Faculty (rus):',
                  style: TextStyle(
                    color: fontYellow,
                    fontFamily: 'FeatureMono',
                    fontSize: 25,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'ИТИП - ИС',
                  style: TextStyle(
                    color: fontYellow,
                    fontFamily: 'FeatureMono',
                    fontSize: 35,
                  ),
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Degree:',
                  style: TextStyle(
                    color: fontYellow,
                    fontFamily: 'FeatureMono',
                    fontSize: 25,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Undergraduate',
                  style: TextStyle(
                    color: fontYellow,
                    fontFamily: 'FeatureMono',
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Graduation year:',
                  style: TextStyle(
                    color: fontYellow,
                    fontFamily: 'FeatureMono',
                    fontSize: 25,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '2024',
                  style: TextStyle(
                    color: fontYellow,
                    fontFamily: 'FeatureMono',
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              Padding(
                padding:
                    EdgeInsets.only(left: 8.0, right: 8, bottom: 8, top: 40),
                child: Text(
                  'School:',
                  style: TextStyle(
                    color: fontYellow,
                    fontFamily: 'FeatureMono',
                    fontSize: 30,
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 8.0, right: 8, bottom: 8, top: 40),
                child: Text(
                  'Presidential Physics and Mathematics Lyceum №239',
                  style: TextStyle(
                    color: fontYellow,
                    fontFamily: 'FeatureMono',
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
