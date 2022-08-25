import 'package:flutter/material.dart';
import 'package:intro_eeee/constants.dart';

class SkillsInfo extends StatelessWidget {
  const SkillsInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(8, 20, 8, 20),
            child: Text(
              'Backend:',
              style: TextStyle(
                fontFamily: 'FeatureMono',
                fontSize: 40,
                color: fontYellow,
              ),
            ),
          ),
          Table(
            children: const [
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'C#',
                    style: TextStyle(
                      fontFamily: 'FeatureMono',
                      fontSize: 35,
                      color: fontYellow,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'ASP.NET',
                    style: TextStyle(
                      fontFamily: 'FeatureMono',
                      fontSize: 35,
                      color: fontYellow,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Entity Framework',
                    style: TextStyle(
                      fontFamily: 'FeatureMono',
                      fontSize: 35,
                      color: fontYellow,
                    ),
                  ),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Java',
                    style: TextStyle(
                      fontFamily: 'FeatureMono',
                      fontSize: 35,
                      color: fontYellow,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Spring Boot',
                    style: TextStyle(
                      fontFamily: 'FeatureMono',
                      fontSize: 35,
                      color: fontYellow,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Hibernate',
                    style: TextStyle(
                      fontFamily: 'FeatureMono',
                      fontSize: 35,
                      color: fontYellow,
                    ),
                  ),
                ),
              ]),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 40),
            child: Text(
              'Flutter: Mobile, Web',
              style: TextStyle(fontFamily: 'FeatureMono', fontSize: 35, color: fontYellow,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Algorithms and data structures:',
                    style: TextStyle(fontFamily: 'FeatureMono', fontSize: 35, color: fontYellow,
                    ),
                  ),
                  Row(
                    children: const [
                      Icon(Icons.square_sharp, color: fontRed, size: 20,),
                      Icon(Icons.square_sharp, color: fontRed, size: 20,),
                      Icon(Icons.square_sharp, color: fontRed, size: 20,),
                      Icon(Icons.square_sharp, color: fontRed, size: 20,),
                      Icon(Icons.square_outlined, color: fontRed, size: 20,),
                    ],
                  ),
                ],
              ),
            )
          ),

          Padding(
              padding: const EdgeInsets.only(top: 40),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Design:',
                      style: TextStyle(fontFamily: 'FeatureMono', fontSize: 35, color: fontYellow,
                      ),
                    ),
                    Row(
                      children: const [
                        Icon(Icons.square_sharp, color: fontRed, size: 20,),
                        Icon(Icons.square_sharp, color: fontRed, size: 20,),
                        Icon(Icons.square_sharp, color: fontRed, size: 20,),
                        Icon(Icons.square_outlined, color: fontRed, size: 20,),
                        Icon(Icons.square_outlined, color: fontRed, size: 15,),
                      ],
                    ),
                  ],
                ),
              )
          ),
          const Padding(
              padding: EdgeInsets.only(top: 40),
              child: Text(
                'English: B2-C1',
                style: TextStyle(fontFamily: 'FeatureMono', fontSize: 35, color: fontYellow,
                ),
              )
          ),
        ],
      ),
    );
  }
}
