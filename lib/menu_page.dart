import 'package:blinking_text/blinking_text.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:intro_eeee/widgets/blink_icon.dart';
import 'package:intro_eeee/widgets/contacts_info.dart';
import 'package:intro_eeee/widgets/educational_info.dart';
import 'package:intro_eeee/widgets/licences_info.dart';
import 'package:intro_eeee/widgets/personal_info_widget.dart';
import 'package:intro_eeee/widgets/work_info.dart';
import 'constants.dart';

enum Page {
  personal,
  education,
  work,
  licences,
  contacts,
}

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
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
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              getButtonWithText(
                'back',
                    () => Navigator.of(context).pop(),
              ),
              (selectedPage == Page.personal)
                  ? getBlinkText('personal')
                  : getButtonWithText(
                'personal',
                    () {
                  setState(
                        () {
                      selectedPage = Page.personal;
                    },
                  );
                },
              ),
              (selectedPage == Page.education)
                  ? getBlinkText('education')
                  : getButtonWithText(
                'education',
                    () {
                  setState(
                        () {
                      selectedPage = Page.education;
                    },
                  );
                },
              ),
              (selectedPage == Page.work)
                  ? getBlinkText('work experience')
                  : getButtonWithText(
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
                  ? getBlinkText('licences')
                  : getButtonWithText(
                'licences',
                    () {
                  setState(
                        () {
                      selectedPage = Page.licences;
                    },
                  );
                },
              ),
              (selectedPage == Page.contacts)
                  ? getBlinkText('contacts')
                  : getButtonWithText(
                'contacts',
                    () {
                  setState(
                        () {
                      selectedPage = Page.contacts;
                    },
                  );
                },
              ),
              GestureDetector(
                child: const Text(
                  randomInfoButton,
                  style: TextStyle(
                    fontFamily: 'FeatureMono',
                    fontSize: 50,
                    color: fontYellow,
                  ),
                ),
                onTap: () => _showFloatingFlushBar(context),
              ),
            ],
          ),
        ),
        const VerticalDivider(
          thickness: 10,
          color: fontYellow,
        ),
      ],
    );
  }

  Widget _right() {
    return Flexible(
      flex: 3,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(child: _getPage()),
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
      duration: const Duration(seconds: 3),
      margin: const EdgeInsets.all(20),
      icon:
          // const Icon(
          //   Icons.info_outline,
          //   color: fontYellow,
          // ),
          BlinkIcon(),
    ).show(context);
  }

  Widget _getPage() {
    Widget widget;

    switch (selectedPage) {
      case Page.personal:
        widget = const PersonalInfo();
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
    }

    return widget;
  }
}

BlinkText getBlinkText(String text) {
  return BlinkText(
    text,
    style: const TextStyle(
      fontFamily: 'FeatureMono',
      fontSize: 50,
      color: fontYellow,
    ),
    endColor: Colors.red,
    duration: const Duration(milliseconds: 500),
  );
}

getButtonWithText(String text, Function onPressed) {
  return GestureDetector(
    child: Text(
      text,
      style: const TextStyle(
        fontFamily: 'FeatureMono',
        fontSize: 50,
        color: fontYellow,
      ),
    ),
    onTap: () => onPressed(),
  );
}
