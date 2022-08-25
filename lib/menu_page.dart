import 'package:blinking_text/blinking_text.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:intro_eeee/navigation_template.dart';
import 'package:intro_eeee/widgets/blink.dart';
import 'package:intro_eeee/widgets/contacts_info.dart';
import 'package:intro_eeee/widgets/educational_info.dart';
import 'package:intro_eeee/widgets/licences_info.dart';
import 'package:intro_eeee/widgets/personal_info_widget.dart';
import 'package:intro_eeee/widgets/skills_info.dart';
import 'package:intro_eeee/widgets/work_info.dart';
import 'constants.dart';

enum Page { personal, education, work, licences, contacts, skills }

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 700 || constraints.maxHeight < 700) {
        return const MenuSmall();
      } else {
        return const MenuLarge();
      }
    });
  }
}

class MenuSmall extends StatefulWidget {
  const MenuSmall({Key? key}) : super(key: key);

  @override
  State<MenuSmall> createState() => _MenuSmallState();
}

class _MenuSmallState extends State<MenuSmall> {
  int randomFactNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundBlue,
      body: Container(
        alignment: Alignment.topCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _getButtonWithText(
                'back',
                    () => Navigator.of(context).pop(),
              ),
              _getButtonWithText(
                'personal',
                    () => Navigator.of(context).push(getRoute(const PersonalInfoSmall(), 'right'))
              ),
              _getButtonWithText(
                'contacts',
                    () {
                },
              ),
              _getButtonWithText(
                'education',
                    () {},
              ),
              _getButtonWithText(
                'skills',
                    () {},
              ),
              _getButtonWithText(
                'work experience',
                    () {},
              ),
              _getButtonWithText(
                'licences',
                    () {},
              ),
              GestureDetector(
                child: const Text(
                  randomInfoButton,
                  style: TextStyle(
                    fontFamily: 'FeatureMono',
                    fontSize: 40,
                    color: fontYellow,
                  ),
                ),
                onTap: () => _showFloatingFlushBar(context),
              ),
            ],
          ),
      ),
    );
  }

  void _showFloatingFlushBar(BuildContext context) {
    String fact;

    if (facts.isEmpty) {
      fact = 'there is no facts, only interpretations';
    } else {
      fact = facts[randomFactNumber++];
      if (randomFactNumber == facts.length) {
        randomFactNumber = 0;
      }
    }

    Flushbar(
      maxWidth: 800,
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
      backgroundColor: Colors.blueGrey,
      duration: const Duration(seconds: 2),
      margin: const EdgeInsets.all(20),
      icon: BlinkIcon(),
    ).show(context);
  }

  _getButtonWithText(String text, Function onPressed) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.only(top: 5, bottom: 10),
        child: Text(
          text,
          style: const TextStyle(
            fontFamily: 'FeatureMono',
            fontSize: 30,
            color: fontYellow,
          ),
        ),
      ),
      onTap: () => onPressed(),
    );
  }
}



class MenuLarge extends StatefulWidget {
  const MenuLarge({Key? key}) : super(key: key);

  @override
  State<MenuLarge> createState() => _MenuLargeState();
}

class _MenuLargeState extends State<MenuLarge> {
  int randomFactNumber = 0;
  Page selectedPage = Page.personal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundBlue,
      body: Row(
        children: [
          _left(),
          _right(),
        ],
      ),
    );
  }

  Widget _left() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _getButtonWithText(
                        'back',
                        () => Navigator.of(context).pop(),
                      ),
                      (selectedPage == Page.personal)
                          ? const Text(
                              'personal',
                              style: TextStyle(
                                  color: fontRed,
                                  fontFamily: 'FeatureMono',
                                  fontSize: 40),
                            )
                          : _getButtonWithText(
                              'personal',
                              () {
                                setState(
                                  () {
                                    selectedPage = Page.personal;
                                  },
                                );
                              },
                            ),
                      (selectedPage == Page.contacts)
                          ? const Text(
                              'contacts',
                              style: TextStyle(
                                  color: fontRed,
                                  fontFamily: 'FeatureMono',
                                  fontSize: 40),
                            )
                          : _getButtonWithText(
                              'contacts',
                              () {
                                setState(
                                  () {
                                    selectedPage = Page.contacts;
                                  },
                                );
                              },
                            ),
                      (selectedPage == Page.education)
                          ? const Text(
                              'education',
                              style: TextStyle(
                                  color: fontRed,
                                  fontFamily: 'FeatureMono',
                                  fontSize: 40),
                            )
                          : _getButtonWithText(
                              'education',
                              () {
                                setState(
                                  () {
                                    selectedPage = Page.education;
                                  },
                                );
                              },
                            ),
                      (selectedPage == Page.skills)
                          ? const Text(
                              'skills',
                              style: TextStyle(
                                  color: fontRed,
                                  fontFamily: 'FeatureMono',
                                  fontSize: 40),
                            )
                          : _getButtonWithText(
                              'skills',
                              () {
                                setState(
                                  () {
                                    selectedPage = Page.skills;
                                  },
                                );
                              },
                            ),
                      (selectedPage == Page.work)
                          ? const Text(
                              'work experience',
                              style: TextStyle(
                                  color: fontRed,
                                  fontFamily: 'FeatureMono',
                                  fontSize: 40),
                            )
                          : _getButtonWithText(
                              'work experience',
                              () {
                                setState(
                                  () {
                                    selectedPage = Page.work;
                                  },
                                );
                              },
                            ),
                      (selectedPage == Page.licences)
                          ? const Text(
                              'licence',
                              style: TextStyle(
                                  color: fontRed,
                                  fontFamily: 'FeatureMono',
                                  fontSize: 40),
                            )
                          : _getButtonWithText(
                              'licences',
                              () {
                                setState(
                                  () {
                                    selectedPage = Page.licences;
                                  },
                                );
                              },
                            ),
                      GestureDetector(
                        child: const Text(
                          randomInfoButton,
                          style: TextStyle(
                            fontFamily: 'FeatureMono',
                            fontSize: 40,
                            color: fontYellow,
                          ),
                        ),
                        onTap: () => _showFloatingFlushBar(context),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'why Flutter?',
                    style: TextStyle(
                        color: fontRed, fontSize: 30, fontFamily: 'FeatureMono', fontWeight: FontWeight.bold),
                  ),
                ),
                onTap: () => {
                  print('why?')
                },
              ),
            ],
          ),
        ),
        const VerticalDivider(
          thickness: 5,
          color: fontYellow,
        ),
      ],
    );
  }

  Widget _right() {
    return Flexible(
      flex: 3,
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Container(
          alignment: Alignment.topLeft,
          child: SingleChildScrollView(
            child: _getPage(),
          ),
        ),
      ),
    );
  }

  void _showFloatingFlushBar(BuildContext context) {
    String fact;

    if (facts.isEmpty) {
      fact = 'there is no facts, only interpretations';
    } else {
      fact = facts[randomFactNumber++];
      if (randomFactNumber == facts.length) {
        randomFactNumber = 0;
      }
    }

    Flushbar(
      maxWidth: 800,
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
      backgroundColor: Colors.blueGrey,
      duration: const Duration(seconds: 2),
      margin: const EdgeInsets.all(20),
      icon: BlinkIcon(),
    ).show(context);
  }

  Widget _getPage() {
    Widget widget;

    switch (selectedPage) {
      case Page.personal:
        widget = const PersonalInfoLarge();
        break;

      case Page.education:
        widget = const EducationalInfo();
        break;
      case Page.work:
        widget = const WorkInfo();
        break;
      case Page.licences:
        widget = const LicencesInfo();
        break;
      case Page.contacts:
        widget = const ContactsInfo();
        break;
      case Page.skills:
        widget = const SkillsInfo();
        break;
    }

    return widget;
  }

  _getButtonWithText(String text, Function onPressed) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.only(top: 5, bottom: 10),
        child: Text(
          text,
          style: const TextStyle(
            fontFamily: 'FeatureMono',
            fontSize: 30,
            color: fontYellow,
          ),
        ),
      ),
      onTap: () => onPressed(),
    );
  }
}
